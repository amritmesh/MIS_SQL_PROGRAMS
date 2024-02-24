--SQL Queries for 2023 Q3 Top 10 
SELECT  county,state, avg(value) as average_home_value, avg((1 * 0.8 * 12 / 0.28) * value *power(1 + average_rate/1200, 360) * average_rate/1200 / (-1 + power(1 + average_rate/1200, 360)) + value*average_effective_tax_rate + annual_premium) AS average_minimum_required_income_to_buy, avg((9.6*value*power(1 + average_rate/1200, 360) * average_rate/1200 / (-1 + power(1 + average_rate/1200, 360)) + value*average_effective_tax_rate + annual_premium) / income_per_capita) AS average_percentage_of_annual_income
FROM DW_COUNTY
WHERE date BETWEEN  '2023-07-30' AND '2023-09-30'
GROUP BY  county, year
HAVING average_home_value > 0
ORDER BY average_percentage_of_annual_income ASC
LIMIT 10;

--SQL Queries for 2023 Q3 Bottom 10
SELECT  county,state, avg(value) as average_home_value, avg((1 * 0.8 * 12 / 0.28) * value *power(1 + average_rate/1200, 360) * average_rate/1200 / (-1 + power(1 + average_rate/1200, 360)) + value*average_effective_tax_rate + annual_premium) AS average_minimum_required_income_to_buy, avg((9.6*value*power(1 + average_rate/1200, 360) * average_rate/1200 / (-1 + power(1 + average_rate/1200, 360)) + value*average_effective_tax_rate + annual_premium) / income_per_capita) AS average_percentage_of_annual_income
FROM DW_COUNTY
WHERE date BETWEEN  '2023-07-30' AND '2023-09-30'
GROUP BY  county, year
HAVING average_home_value > 0
ORDER BY average_percentage_of_annual_income DESC
LIMIT 10;

--SQL Queries for 2023 Q3 ATTOM Top 10
SELECT  county,state, avg(value) as average_homevalue, avg((1 * 0.8 * 12 / 0.28) * value *power(1 + average_rate/1200, 360) * average_rate/1200 / (-1 + power(1 + average_rate/1200, 360)) + value*average_effective_tax_rate + annual_premium) AS average_minimum_required_income_to_buy, avg((9.6*value*power(1 + average_rate/1200, 360) * average_rate/1200 / (-1 + power(1 + average_rate/1200, 360)) + value*average_effective_tax_rate + annual_premium) / income_per_capita) AS average_percentage_of_annual_income
FROM DW_COUNTY
WHERE date BETWEEN  '2023-07-30' AND '2023-09-30'
GROUP BY  county, year
HAVING county = 'Montgomery County' OR county =  'Fayette County' OR  county = 'Macon County' OR county =  'Caddo Parish'  OR county = 'La Salle County' OR county = 'Saginaw County' OR county = 'Saint Lawrence County' OR county = 'Wayne County' OR county = 'Terrebonne Parish' OR county = 'Oswego County'
ORDER BY average_percentage_of_annual_income ASC
LIMIT 10;


-- SQL Queries for 2023 Q3  ATTOM Bottom 9 (No Maui Income)
SELECT  county,state, avg(value) AS average_homevalue, avg((1 * 0.8 * 12 / 0.28) * value*power(1 + average_rate/1200, 360) * average_rate/1200 / (-1 + power(1 + average_rate/1200, 360)) + value*average_effective_tax_rate + annual_premium) AS average_minimum_required_income_to_buy, avg((9.6*value*power(1 + average_rate/1200, 360) * average_rate/1200 / (-1 + power(1 + average_rate/1200, 360)) + value*average_effective_tax_rate + annual_premium) / income_per_capita) AS average_percentage_of_annual_income
FROM DW_COUNTY
WHERE date BETWEEN  '2023-07-30' AND '2023-09-30'
GROUP BY  county, year
HAVING county = 'San Luis Obispo County' OR county =  'Kings County' OR  county = 'Queens County' OR county =  'Los Angeles County'  OR county = 'Nevada County' OR county = 'Napa County' OR county = 'Sonoma County' OR county = 'Rockland County' OR county = 'Marin County' 
ORDER BY average_percentage_of_annual_income DESC
LIMIT 10;