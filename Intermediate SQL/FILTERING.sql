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
