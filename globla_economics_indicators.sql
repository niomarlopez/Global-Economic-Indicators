SELECT c.shortname, i.IndicatorName, i.YEAR, i.value 
FROM Country c
JOIN indicators i ON c.CountryCode = i.CountryCode
WHERE c.ShortName in ('United Kingdom', 'United States', 'China')
AND i.IndicatorName = 'CO2 emissions (kt)'

-- Whats the prevelance of HIV when comparing Zambia to Zimbabwe?
SELECT c.shortname, i.IndicatorName, i.YEAR, i.Value 
FROM Country c
JOIN indicators i ON c.CountryCode = i.CountryCode
WHERE c.ShortName in ('Zambia','Zimbabwe')
AND (i.IndicatorName = 'Prevalence of HIV, total (% of population ages 15-49)') 
ORDER BY i."Year" 

-- What percentage of males are using condoms? 
SELECT c.shortname, i.IndicatorName, i.YEAR, i.value--, count(c.ShortName) OVER  (PARTITION BY i."Year")
FROM Country c
JOIN indicators i ON c.CountryCode = i.CountryCode
WHERE c.ShortName in ('Zambia','Zimbabwe')
AND (i.IndicatorName = 'Condom use, population ages 15-24, male (% of males ages 15-24)') 
ORDER BY i."Year" 

-- What percentage of females are using condoms? 
SELECT c.shortname, i.IndicatorName, i.YEAR, i.value--, count(c.ShortName) OVER  (PARTITION BY i."Year")
FROM Country c
JOIN indicators i ON c.CountryCode = i.CountryCode
WHERE c.ShortName in ('Zambia','Zimbabwe')
AND (i.IndicatorName = 'Condom use, population ages 15-24, female (% of females ages 15-24)') 
ORDER BY i."Year" 

-- Whats the prevelance of HIV in females when comparing Zambia to Zimbabwe?
SELECT c.shortname, i.IndicatorName, i.YEAR, i.Value 
FROM Country c
JOIN indicators i ON c.CountryCode = i.CountryCode
WHERE c.ShortName in ('Zambia','Zimbabwe')
AND (i.IndicatorName = 'Prevalence of HIV, female (% ages 15-24)') 
ORDER BY i."Year" 

-- Whats the prevelance of HIV in males when comparing Zambia to Zimbabwe?
SELECT c.shortname, i.IndicatorName, i.YEAR, i.Value 
FROM Country c
JOIN indicators i ON c.CountryCode = i.CountryCode
WHERE c.ShortName in ('Zambia','Zimbabwe')
AND (i.IndicatorName = 'Prevalence of HIV, male (% ages 15-24)') 
ORDER BY i."Year" 

-- Whats percentage of people that have HIV are females when comparing Zambia to Zimbabwe?
SELECT c.shortname, i.IndicatorName, i.YEAR, i.Value 
FROM Country c
JOIN indicators i ON c.CountryCode = i.CountryCode
WHERE c.ShortName in ('Zambia','Zimbabwe')
AND (i.IndicatorName = "Women's share of population ages 15+ living with HIV (%)") 
ORDER BY i."Year" 

-- Whats percentage of people are on antiretroviral drugs when comparing Nigeria to Zimbabwe?
SELECT c.shortname, i.IndicatorName, i.YEAR, i.Value 
FROM Country c
JOIN indicators i ON c.CountryCode = i.CountryCode
WHERE c.ShortName in ('Nigeria','Zimbabwe','Zambia')
AND (i.IndicatorName = "Antiretroviral therapy coverage (% of people living with HIV)") 
ORDER BY i."Year" 

-- How many children are infected with HIV when comparing Zambia to Zimbabwe?
SELECT c.shortname, i.IndicatorName, i.YEAR, i.Value 
FROM Country c
JOIN indicators i ON c.CountryCode = i.CountryCode
WHERE c.ShortName in ('Zambia','Zimbabwe')
AND (i.IndicatorName = "Children (0-14) living with HIV") 
ORDER BY i."Year" 

-- What percentage of women belived that a husband was justified in beating their wife?
SELECT c.shortname, i.IndicatorName, i.YEAR, i.Value 
FROM Country c
JOIN indicators i ON c.CountryCode = i.CountryCode
WHERE c.ShortName = 'Zimbabwe'
AND (i.IndicatorName = "Women who believe a husband is justified in beating his wife (any of five reasons) (%)") 
ORDER BY i."Year"


-- How has the percentage of communicable deaths changed over time?
SELECT c.shortname, i.IndicatorName, i.YEAR, i.Value 
FROM Country c
JOIN indicators i ON c.CountryCode = i.CountryCode
WHERE c.ShortName = 'Zimbabwe'
AND (i.IndicatorName = "Cause of death, by communicable diseases and maternal, prenatal and nutrition conditions (% of total)") 
ORDER BY i."Year"

-- Analyzing female mortality rate
SELECT c.shortname, i.IndicatorName, i.YEAR, i.Value 
FROM Country c
JOIN indicators i ON c.CountryCode = i.CountryCode
WHERE c.ShortName = 'Zimbabwe'
AND (i.IndicatorName = "Mortality rate, adult, female (per 1,000 female adults)") 
ORDER BY i."Year"

-- Analyzing male mortality rate
SELECT c.shortname, i.IndicatorName, i.YEAR, i.Value 
FROM Country c
JOIN indicators i ON c.CountryCode = i.CountryCode
WHERE c.ShortName = 'Zimbabwe'
AND (i.IndicatorName = "Mortality rate, adult, male (per 1,000 male adults)") 
ORDER BY i."Year"

-- Analyzing GDP for Zimbabwe & Zambia
SELECT c.shortname, i.IndicatorName, i.YEAR, i.Value 
FROM Country c
JOIN indicators i ON c.CountryCode = i.CountryCode
WHERE c.ShortName in ('Zambia','Zimbabwe')
AND (i.IndicatorName = "GDP, PPP (current international $)") 
ORDER BY i."Year"
