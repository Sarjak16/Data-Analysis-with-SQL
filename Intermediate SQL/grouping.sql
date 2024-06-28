-- Find the release_year and film_count of each year
SELECT release_year, COUNT(title) AS film_count
FROM films
GROUP BY release_year; 

-- Find the release_year and average duration of films for each year
SELECT release_year, AVG(duration) AS avg_duration
FROM films
GROUP BY release_year; 


-- Find the release_year, country, and max_budget, then group and order by release_year and country

SELECT release_year,country, MAX(budget) AS max_budget
FROM films
GROUP BY release_year, country; 


--FILTERING GROUPED DATA----------------------------



-- Select the country and distinct count of certification as certification_count
SELECT country, COUNT(DISTINCT certification) AS certification_count
FROM films

-- Group by country
GROUP BY country
-- Filter results to countries with more than 10 different certifications
HAVING COUNT(DISTINCT certification)>10;

--...................................................................

-- Select the country and average_budget from films
SELECT country, AVG(budget) AS average_budget
FROM films
-- Group by country
GROUP BY COUNTRY
-- Filter to countries with an average_budget of more than one billion
HAVING AVG(budget)>1000000000
-- Order by descending order of the aggregated budget
ORDER BY average_budget DESC
LIMIT 2;