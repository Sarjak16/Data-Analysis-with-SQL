-- 1
-- Select the name of each person in the people table, sorted alphabetically.
    -- Select name from people and sort alphabetically
    SELECT name 
    FROM people
    ORDER BY name;
-- 2
-- Select the title and duration for every film, from longest duration to shortest.
    -- Select the title and duration from longest to shortest film
    SELECT title, duration 
    FROM films
    ORDER BY duration DESC;