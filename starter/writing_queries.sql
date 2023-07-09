-- There are 350 books in the books table, representing all of the books that our local library has available for checkout.
--  But how many different authors are represented in these 350 books? The answer is surely less than 350. For example, J.K.
--   Rowling wrote all seven Harry Potter books,
--  so if our library has all Harry Potter books, seven books will be written by J.K Rowling. There are likely many more repeat authors!

-- Questions
-- 1.Write SQL code that returns a result set with just one column listing the unique authors in the books table.
-- Select unique authors from the books table
SELECT DISTINCT author
FROM books


-- 2.Update the code to return the unique author and genre combinations in the books table.
  -- Select unique authors and genre combinations from the books table
SELECT DISTINCT author, genre
FROM books;


-- ALIASING...........................................................................................................................................
--   Add an alias to the SQL query to rename the author column to unique_author in the result set.
-- Alias author so that it becomes unique_author
SELECT DISTINCT author AS unique_author
FROM books;


-- VIEWING...............................................................................................................................................
--   Add a single line of code that saves the results of the written query as a view called library_authors.
-- Save the results of this query as a view called library_authors
CREATE VIEW library_authors AS
SELECT DISTINCT author AS unique_author
FROM books;


--2.Check that the view was created by selecting all columns from library_authors.
-- Your code to create the view:
CREATE VIEW library_authors AS
SELECT DISTINCT author AS unique_author
FROM books;

-- Select all columns from library_authors
SELECT *
FROM library_authors
