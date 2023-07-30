-- 1
-- Use the SUM() function to calculate the total duration of all films and alias with total_duration.
-- Query the sum of film durations
SELECT SUM(duration) AS total_duration
FROM films;
-- 2
-- Calculate the average duration of all films and alias with average_duration.
-- Calculate the average duration of all films
SELECT AVG(duration) AS average_duration
FROM films;

-- 3
-- Find the most recent release_year in the films table, aliasing as latest_year.
-- Find the latest release_year
SELECT MAX(release_year) AS latest_year
FROM films;
-- 4
-- Find the duration of the shortest film and use the alias shortest_film.
-- Find the duration of the shortest film
SELECT MIN(duration) AS shortest_film
FROM films;


...............................................................................................................................
--  1 
-- Use SUM() to calculate the total gross for all films made in the year 2000 or later, and use the alias total_gross.
-- Calculate the sum of gross from the year 2000 or later
SELECT SUM(gross) AS total_gross
from films
WHERE release_year >=2000
-- 2
-- Calculate the average amount grossed by all films whose titles start with the letter 'A' and alias with avg_gross_A.
-- Calculate the average gross of films that start with A

SELECT AVG(gross) AS avg_gross_A
from films
WHERE title LIKE 'A%';
-- 3
-- Calculate the lowest gross film in 1994 and use the alias lowest_gross.
-- Calculate the lowest gross film in 1994

SELECT MIN(gross) AS lowest_gross
FROM films
WHERE release_year = 1994;
-- 4
-- Calculate the highest gross film between 2000 and 2012, inclusive, and use the alias highest_gross.
-- Calculate the highest gross film released between 2000-2012
SELECT MAX(gross) AS highest_gross
FROM films
WHERE release_year BETWEEN 2000 AND 2012;



-- ROUND()....................................................................................................
--   Calculate the average facebook_likes to one decimal place and assign to the alias, avg_facebook_likes.

-- Round the average number of facebook_likes to one decimal place
SELECT ROUND(AVG(facebook_likes),1) AS avg_facebook_likes
FROM reviews
