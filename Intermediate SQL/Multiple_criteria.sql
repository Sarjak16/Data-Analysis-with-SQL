-- 1
-- Select the title and release_year for all German-language films released before 2000.
-- Select the title and release_year for all German-language films released before 2000
SELECT title, release_year
FROM films
WHERE language= 'German' AND release_year<2000

-- 2
-- Update the query from the previous step to show German-language films released after 2000 rather than before.
-- Update the query to see all German-language films released after 2000
SELECT title, release_year
FROM films
WHERE release_year > 2000
	AND language = 'German';
-- 3
-- Select all details for German-language films released after 2000 but before 2010 using only WHERE and AND.
-- Select all records for German-language films released after 2000 and before 2010
-- Update the query to see all German-language films released after 2000
SELECT *
FROM films
WHERE (release_year > 2000 AND release_year < 2010) AND language = 'German';

-- ...........................................................................................................................................................
-- Select the title and release_year for films released in 1990 or 1999 using only WHERE and OR.
-- Find the title and year of films from the 1990 or 1999
SELECT title, release_year
FROM films
WHERE release_year= 1990 OR release_year= 1999

-- Filter the records to only include English or Spanish-language films.
SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
-- Add a filter to see only English or Spanish-language films
AND	((language='spanish' OR language='English'));

-- Finally, restrict the query to only return films worth more than $2,000,000 gross.

SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
	AND (language = 'English' OR language = 'Spanish')
-- Filter films with more than $2,000,000 gross
	AND gross > 2000000;;

-- ............................................................................................................................................................................]
-- Select the title and release_year of all films released between 1990 and 2000 (inclusive) using BETWEEN.
-- Select the title and release_year for films released between 1990 and 2000
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000;

-- Build on your previous query to select only films with a budget over $100 million.
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
-- Narrow down your query to films with budgets > $100 million
	AND budget > 100000000;;
