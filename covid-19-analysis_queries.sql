SELECT * FROM `who-covid-19-data`;

SELECT country, SUM(New_cases) AS Total_cases FROM `who-covid-19-data`
GROUP BY country
ORDER BY country;

SELECT country, SUM(New_deaths) AS Total_Deaths
FROM `who-covid-19-data`
GROUP BY country
ORDER BY country;

SELECT Country,MAX(New_Cases)
FROM `who-covid-19-data`
GROUP BY Country
ORDER BY Country;

SELECT Country,Cumulative_cases,Date_reported
FROM `who-covid-19-data`
WHERE Cumulative_Cases = 
       (SELECT MAX(Cumulative_Cases)
        FROM `who-covid-19-data`
        )
;

SELECT * FROM `who-covid-19-data`
ORDER BY ï»¿Date_reported DESC
LIMIT 1000;

ALTER TABLE `who-covid-19-data`
RENAME COLUMN `ï»¿Date_reported` TO `Date_Reported`; 

DESC `who-covid-19-data`;

SELECT  Country, New_cases,Date_reported
FROM `who-covid-19-data`
WHERE New_cases =
( SELECT MAX(New_cases) FROM `who-covid-19-data`);

SELECT   Country, New_deaths,Date_reported 
FROM `who-covid-19-data`
WHERE New_deaths =
( SELECT MAX(New_deaths) 
   FROM `who-covid-19-data`);

SELECT  Country, Cumulative_deaths , Date_reported
FROM `who-covid-19-data`
WHERE Cumulative_deaths =
( SELECT MAX(Cumulative_deaths) 
  FROM `who-covid-19-data`);
  
SELECT * FROM `who-covid-19-data`
ORDER BY Date_reported DESC
LIMIT 1;

SELECT * FROM `who-covid-19-data`
ORDER BY Date_reported ASC
LIMIT 1;

SELECT Date_reported,Country,New_cases
FROM `who-covid-19-data`
WHERE Country = 'India'
ORDER BY New_cases DESC
;
 
SELECT Date_reported,Country,New_deaths
FROM `who-covid-19-data`
WHERE Country = 'India'
ORDER BY New_deaths DESC;

SELECT Date_reported,Country,Cumulative_cases
FROM `who-covid-19-data`
WHERE Country = 'India'
ORDER BY Cumulative_cases DESC
;
 
SELECT Date_reported,Country,Cumulative_deaths
FROM `who-covid-19-data`
WHERE Country = 'India'
ORDER BY Cumulative_deaths DESC
limit 1;

SET SQL_SAFE_UPDATES = 0;
UPDATE `who-covid-19-data`
SET New_deaths = '0'
WHERE New_deaths ='';

ALTER TABLE `who-covid-19-data`
MODIFY COLUMN New_cases INT;
ALTER TABLE `who-covid-19-data`
MODIFY COLUMN New_deaths INT;

DESCRIBE `who-covid-19-data`;

SELECT Date_reported,New_cases,New_deaths
FROM `who-covid-19-data`
WHERE Country = 'India'
ORDER BY Date_reported;




