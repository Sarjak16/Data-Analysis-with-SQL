-- 1.  
--Debug and fix the SQL query provided.
-- SELECT certfication
-- FROM films
-- LIMIT 5;

SELECT certification
FROM films
LIMIT 5;


-- 2
-- Find the two errors in this code; the same error has been repeated twice.
-- Debug this code
-- SELECT film_id imdb_score num_votes
-- FROM reviews;


SELECT film_id, imdb_score, num_votes
FROM reviews;

-- 3
-- Find the two bugs in this final query.
-- Debug this code
-- SELECT COUNNT(birthdate) AS count_birthdays
-- FROM peeple;
SELECT COUNT(birthdate) AS count_birthdays
FROM people;


-- ....................................................................................................................
--   SQL formatting


--Adjust the sample code so that it is in line with standard practices.
-- Rewrite this query
-- select person_id, role from roles limit 10

SELECT person_id, role
FROM roles 
LIMIT 10;
