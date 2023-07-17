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
