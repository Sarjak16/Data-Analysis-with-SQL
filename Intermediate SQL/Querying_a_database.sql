-- 1.
-- Count the total number of records in the people table, aliasing the result as count_records.
-- Count the number of records in the people table
SELECT COUNT(*)AS count_records
FROM people

-- 2.
-- Count the number of records with a birthdate in the people table, aliasing the result as count_birthdate.
-- Count the number of birthdates in the people table
SELECT COUNT(birthdate) AS count_birthdate
FROM people
-- 3.
-- Count the records for languages and countries in the films table; alias as count_languages and count_countries.
-- Count the records for languages and countries represented in the films table
SELECT COUNT(language) AS count_languages, COUNT(country) AS count_countries
FROM films;

-- ..................................................................................................................................................
-- 1
-- Return the unique countries represented in the films table using DISTINCT.

-- Return the unique countries from the films table
SELECT DISTINCT country
FROM films;

-- 2
-- Return the number of unique countries represented in the films table, aliased as count_distinct_countries
-- Count the distinct countries from the films table

SELECT COUNT(DISTINCT country) AS count_distinct_countries
FROM films;
