-- Feel free to explore books in the exercise. Let's zoom in on this table in the database schema to see the fields and data types it contains.

-- Your task in this exercise is to practice selecting fields from books.

--1 Use SQL to return a result set of all book titles included in the books table.
-- Return all titles from the books table
SELECT *
FROM books

-- 2
-- Select both the title and author fields from books.
-- Select title and author from the books table
SELECT title, author
FROM books;

-- 3
-- Select all fields from the books table.
SELECT *
FROM books
