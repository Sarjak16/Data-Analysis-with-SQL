-- SELECT&FROM

SELECT studentID, FirstName, LastName, FirstName + ' ' + LastName AS FullName
FROM student;
+-----------+-------------------+------------+------------------------+
| studentID | FirstName         | LastName   | FullName               |
+-----------+-------------------+------------+------------------------+
|         1 | Monique           | Davis      | Monique Davis          |
|         2 | Teri              | Gutierrez  | Teri Gutierrez         |
|         3 | Spencer           | Pautier    | Spencer Pautier        |
|         4 | Louis             | Ramsey     | Louis Ramsey           |
|         5 | Alvin             | Greene     | Alvin Greene           |
|         6 | Sophie            | Freeman    | Sophie Freeman         |
|         7 | Edgar Frank "Ted" | Codd       | Edgar Frank "Ted" Codd |
|         8 | Donald D.         | Chamberlin | Donald D. Chamberlin   |
|         9 | Raymond F.        | Boyce      | Raymond F. Boyce       |
+-----------+-------------------+------------+------------------------+
9 rows in set (0.00 sec)

--CREATE TABLE

CREATE TABLE table_name (
    column_1 datatype,
    column_2 datatype,
    column_3 datatype
);

--Altertable
ALTER TABLE table_name
ADD column_name datatype;

--CHECK
-- The CHECK constraint is used to limit the value range that can be placed in a column.

-- If you define a CHECK constraint on a single column it allows only certain values for this column. 
--If you define a CHECK constraint on a table it can limit the values in certain columns based on values in other columns in the row.

-- The following SQL creates a CHECK constraint on the “Age” column when the “Persons” table is created. 
--The CHECK constraint ensures that you can not have any person below 18 years.

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CHECK (Age>=18)
);

--To allow naming of a CHECK constraint, and for defining a CHECK constraint on multiple columns, use the following SQL syntax:

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255),
    CONSTRAINT CHK_Person CHECK (Age>=18 AND City='Sandnes')
);

WHERE
(AND, OR, IN, BETWEEN, and LIKE)

-- The WHERE clause is used to limit the number of rows returned.

-- As an example, first we will show you a SELECT statement and results without a WHERE statement. Then we will add a WHERE statement that uses all five qualifiers above.

SELECT studentID, FullName, sat_score, rcd_updated FROM student;
+-----------+------------------------+-----------+---------------------+
| studentID | FullName               | sat_score | rcd_updated         |
+-----------+------------------------+-----------+---------------------+
|         1 | Monique Davis          |       400 | 2017-08-16 15:34:50 |
|         2 | Teri Gutierrez         |       800 | 2017-08-16 15:34:50 |
|         3 | Spencer Pautier        |      1000 | 2017-08-16 15:34:50 |
|         4 | Louis Ramsey           |      1200 | 2017-08-16 15:34:50 |
|         5 | Alvin Greene           |      1200 | 2017-08-16 15:34:50 |
|         6 | Sophie Freeman         |      1200 | 2017-08-16 15:34:50 |
|         7 | Edgar Frank "Ted" Codd |      2400 | 2017-08-16 15:35:33 |
|         8 | Donald D. Chamberlin   |      2400 | 2017-08-16 15:35:33 |
|         9 | Raymond F. Boyce       |      2400 | 2017-08-16 15:35:33 |
+-----------+------------------------+-----------+---------------------+
--9 rows in set (0.00 sec)
--Now, we'll repeat the SELECT query but we'll limit the rows returned using a WHERE statement.

STUDENT studentID, FullName, sat_score, recordUpdated
FROM student
WHERE (studentID BETWEEN 1 AND 5 OR studentID = 8)
        AND
        sat_score NOT IN (1000, 1400);
+-----------+----------------------+-----------+---------------------+
| studentID | FullName             | sat_score | rcd_updated         |
+-----------+----------------------+-----------+---------------------+
|         1 | Monique Davis        |       400 | 2017-08-16 15:34:50 |
|         2 | Teri Gutierrez       |       800 | 2017-08-16 15:34:50 |
|         4 | Louis Ramsey         |      1200 | 2017-08-16 15:34:50 |
|         5 | Alvin Greene         |      1200 | 2017-08-16 15:34:50 |
|         8 | Donald D. Chamberlin |      2400 | 2017-08-16 15:35:33 |
+-----------+----------------------+-----------+---------------------+
--5 rows in set (0.00 sec)


-- UPDATE
-- To update a record in a table you use the UPDATE statement.

-- Use the WHERE condition to specify which records you want to update. It is possible to update one or more columns at a time. The syntax is:

UPDATE table_name
SET column1 = value1, 
    column2 = value2, ...
WHERE condition;