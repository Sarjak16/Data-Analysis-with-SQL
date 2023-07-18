-- 1
-- Select the film_id and imdb_score from the reviews table and filter on scores higher than 7.0.
SELECT film_id, imdb_score
FROM reviews
WHERE imdb_score > 7.0;

-- 2
-- Select the film_id and facebook_likes of the first ten records with less than 1000 likes from the reviews table.
SELECT film_id, facebook_likes
FROM reviews
WHERE facebook_likes < 1000
LIMIT 10;
-- 3
-- Count how many records have a num_votes of at least 100,000; use the alias films_over_100K_votes.
SELECT COUNT(num_votes) AS films_over_100K_votes
FROM reviews
WHERE num_votes >= 100000;


-- Select and count the language field using the alias count_spanish.
-- Apply a filter to select only Spanish from the language field.
-- Count the Spanish-language films
SELECT COUNT(language) AS count_spanish
FROM films
WHERE language = 'Spanish';

--.................................FILTERING_TEXT...................................................................................................
--   1
-- Select the names of all people whose names begin with 'B'.
-- Select the names that start with B
SELECT name
FROM people
WHERE name LIKE 'B%';
-- 2
-- Select the names of people whose names have 'r' as the second letter.
SELECT name
FROM people
-- Select the names that have r as the second letter
WHERE name LIKE '_r%';
-- 3
-- Select the names of people whose names don't start with 'A'.
SELECT name
FROM people
-- Select names that don't start with A
WHERE name NOT LIKE 'A%';
-- .......................................................EX2.............
-- 1.  
-- Select the title and release_year of all films released in 1990 or 2000 that were longer than two hours.
-- Find the title and release_year for all films over two hours in length released in 1990 and 2000
SELECT title, release_year
FROM films
WHERE release_year IN (1990, 2000) AND duration > 120;

-- 2
-- Select the title and language of all films in English, Spanish, or French using IN.
-- Find the title and language of all films in English, Spanish, and French
SELECT title, language
FROM films 
WHERE language IN ('English','Spanish','French');
-- 3
-- Select the title, certification and language of all films certified NC-17 or R that are in English, Italian, or Greek.
-- Find the title, certification, and language all films certified NC-17 or R that are in English, Italian, or Greek
SELECT title, certification, language
FROM films
WHERE certification IN ('NC-17','R') AND language IN ('English','Italian','Greek');
