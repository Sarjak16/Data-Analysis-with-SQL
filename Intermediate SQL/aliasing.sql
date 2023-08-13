
-- Select the title and duration in hours for all films and alias as duration_hours; since the current durations are in minutes, you'll need to divide duration by 60.0.

-- Calculate the title and duration_hours from films
SELECT title, (duration /60.0) AS duration_hours
FROM films;

-- Calculate the percentage of people who are no longer alive and alias the result as percentage_dead.
SELECT COUNT(deathdate) * 100.0 / COUNT(name) AS percentage_dead
FROM people;
-- Find how many decades (period of ten years) the films table covers by using MIN() and MAX(); alias as number_of_decades.
-- Find the number of decades in the films table
SELECT (MAX(release_year)-MIN(release_year)) / 10.0 AS number_of_decades
FROM films;
