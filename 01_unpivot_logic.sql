CREATE OR REPLACE VIEW fact_unit_economics_long AS
-- Historical Actuals (FY2023-FY2025)
SELECT Metric, '2024' AS FY_Year, FY2024 AS Value, 'Actual' AS Status FROM stg_unit_economics
UNION ALL
SELECT Metric, '2025' AS FY_Year, FY2025 AS Value, 'Actual' AS Status FROM stg_unit_economics
UNION ALL
-- Future Projections (FY2026-FY2031)
SELECT Metric, '2026' AS FY_Year, FY2026 AS Value, 'Estimate' AS Status FROM stg_unit_economics
UNION ALL
SELECT Metric, '2027' AS FY_Year, FY2027 AS Value, 'Estimate' AS Status FROM stg_unit_economics
UNION ALL
SELECT Metric, '2028' AS FY_Year, FY2028 AS Value, 'Estimate' AS Status FROM stg_unit_economics
UNION ALL
SELECT Metric, '2029' AS FY_Year, FY2029 AS Value, 'Estimate' AS Status FROM stg_unit_economics
UNION ALL
SELECT Metric, '2030' AS FY_Year, FY2030 AS Value, 'Estimate' AS Status FROM stg_unit_economics
UNION ALL
SELECT Metric, '2031' AS FY_Year, FY2031 AS Value, 'Estimate' AS Status FROM stg_unit_economics;