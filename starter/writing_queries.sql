-- There are 350 books in the books table, representing all of the books that our local library has available for checkout.
--  But how many different authors are represented in these 350 books? The answer is surely less than 350. For example, J.K.
--   Rowling wrote all seven Harry Potter books,
--  so if our library has all Harry Potter books, seven books will be written by J.K Rowling. There are likely many more repeat authors!

-- Questions
-- 1.Write SQL code that returns a result set with just one column listing the unique authors in the books table.
-- Select unique authors from the books table
SELECT DISTINCT author
FROM books
