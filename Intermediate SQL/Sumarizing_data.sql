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
