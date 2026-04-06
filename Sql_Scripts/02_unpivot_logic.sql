CREATE OR REPLACE VIEW fact_revenue_long AS
-- Historical Actuals
SELECT Metric, '2023' AS FY_Year, FY2023 AS Amount, 'Actual' AS Status FROM stg_snowflake_revenue
UNION ALL
SELECT Metric, '2024' AS FY_Year, FY2024 AS Amount, 'Actual' AS Status FROM stg_snowflake_revenue
UNION ALL
SELECT Metric, '2025' AS FY_Year, FY2025 AS Amount, 'Actual' AS Status FROM stg_snowflake_revenue
UNION ALL
-- Future Projections (Estimates)
SELECT Metric, '2026' AS FY_Year, FY2026 AS Amount, 'Estimate' AS Status FROM stg_snowflake_revenue
UNION ALL
SELECT Metric, '2027' AS FY_Year, FY2027 AS Amount, 'Estimate' AS Status FROM stg_snowflake_revenue
UNION ALL
SELECT Metric, '2028' AS FY_Year, FY2028 AS Amount, 'Estimate' AS Status FROM stg_snowflake_revenue
UNION ALL
SELECT Metric, '2029' AS FY_Year, FY2029 AS Amount, 'Estimate' AS Status FROM stg_snowflake_revenue
UNION ALL
SELECT Metric, '2030' AS FY_Year, FY2030 AS Amount, 'Estimate' AS Status FROM stg_snowflake_revenue
UNION ALL
SELECT Metric, '2031' AS FY_Year, FY2031 AS Amount, 'Estimate' AS Status FROM stg_snowflake_revenue;