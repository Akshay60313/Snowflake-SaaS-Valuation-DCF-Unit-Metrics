CREATE OR REPLACE VIEW view_snowflake_final_analytics AS
WITH MasterBase AS (
    SELECT 
        r.FY_Year,
        r.Status,
        -- Financial Metrics
        MAX(CASE WHEN r.Metric = 'Product Revenue' THEN r.Amount END) AS total_revenue,
        MAX(CASE WHEN r.Metric = 'Gross Profit' THEN r.Amount END) AS gross_profit,
        MAX(CASE WHEN r.Metric = 'Free Cash flow' THEN r.Amount END) AS fcf,
        MAX(CASE WHEN r.Metric = 'GAAP Op income' THEN r.Amount END) AS ebit_gaap,
        MAX(CASE WHEN r.Metric = 'ADD:Share based compensation' THEN r.Amount END) AS sbc,
        -- Unit Economics (Rounded to 2 decimals)
        ROUND(MAX(CASE WHEN u.Metric = 'LTV / CAC Ratio' THEN u.Value END), 2) AS ltv_cac,
        ROUND(MAX(CASE WHEN u.Metric = 'MAGIC NUMBER' THEN u.Value END), 2) AS magic_number,
        ROUND(MAX(CASE WHEN u.Metric = 'Net Revenue Retention' THEN u.Value END), 4) AS nrr_pct
    FROM fact_revenue_long r
    LEFT JOIN fact_unit_economics_long u ON r.FY_Year = u.FY_Year
    GROUP BY r.FY_Year, r.Status
),
CalculatedMetrics AS (
    SELECT 
        *,
        -- YoY Growth (Rounded to 4 decimals for % formatting)
        LAG(total_revenue) OVER (ORDER BY FY_Year) AS prev_year_revenue,
        ROUND((total_revenue - LAG(total_revenue) OVER (ORDER BY FY_Year)) / LAG(total_revenue) OVER (ORDER BY FY_Year), 4) AS rev_growth_yoy,
        -- Margins (Rounded to 4 decimals)
        ROUND((gross_profit / total_revenue), 4) AS gross_margin_pct,
        ROUND((fcf / total_revenue), 4) AS fcf_margin_pct,
        (ebit_gaap + sbc) AS op_income_nongaap
    FROM MasterBase
)
SELECT 
    *,
    -- Rule of 40 Score (Rounded to 4 decimals)
    ROUND((IFNULL(rev_growth_yoy, 0) + IFNULL(fcf_margin_pct, 0)), 4) AS rule_of_40_score
FROM CalculatedMetrics;