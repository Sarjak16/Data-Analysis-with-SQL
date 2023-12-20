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