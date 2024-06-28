--Select the release_year for each film in the films table, filter for records released after 1990, and group by release_year.
-- Select the release_year for films released after 1990 grouped by year
SELECT release_year
FROM films
WHERE release_year > 1990
GROUP BY release_year;

--Modify the query to include the average budget aliased as avg_budget and average gross aliased as avg_gross for the results we have so far.
-- Modify the query to also list the average budget and average gross
SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year;

--Modify the query once more so that only years with an average budget of greater than 60 million are included.
SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000;

--Finally, order the results from the highest average gross and limit to one.
SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000
-- Order the results from highest to lowest average gross and limit to one
ORDER BY avg_gross DESC
LIMIT 1;