DROP TABLE IF EXISTS DW_COUNTY;
CREATE TABLE DW_COUNTY AS
SELECT ZIP_FIPS.zip_code, EFFECTIVE_TAX_RATE.fips AS county_fips, EFFECTIVE_TAX_RATE.average_effective_tax_rate, ANNUAL_INCOME.year, ZHVI_COUNTY.date, ANNUAL_INCOME.income_per_capita, MORTGAGE_RATE.average_rate, ZHVI_COUNTY.county, GROSS_RENT.state, ZHVI_COUNTY.value, HOME_INSURANCE.annual_premium, ZIP_FIPS.city, GROSS_RENT.fair_market_rent
FROM ZHVI_COUNTY AS ZHVI_COUNTY
INNER JOIN EFFECTIVE_TAX_RATE AS EFFECTIVE_TAX_RATE ON ZHVI_COUNTY.fips = EFFECTIVE_TAX_RATE.fips
INNER JOIN ZIP_FIPS AS ZIP_FIPS ON ZHVI_COUNTY.fips = ZIP_FIPS.fips
INNER JOIN HOME_INSURANCE AS HOME_INSURANCE ON ZIP_FIPS.zip_code = HOME_INSURANCE.zip_code
INNER JOIN ANNUAL_INCOME AS ANNUAL_INCOME ON ZHVI_COUNTY.fips = ANNUAL_INCOME.fips
AND strftime ('%Y' ,ZHVI_COUNTY.date) = ANNUAL_INCOME.year
AND strftime ('%Y' ,ZHVI_COUNTY.date) = GROSS_RENT.year
INNER JOIN MORTGAGE_RATE AS MORTGAGE_RATE ON ZHVI_COUNTY.date = MORTGAGE_RATE.date
INNER JOIN GROSS_RENT AS GROSS_RENT ON ZHVI_COUNTY.county = GROSS_RENT.county
GROUP BY ZHVI_COUNTY.county, ZHVI_COUNTY.date;