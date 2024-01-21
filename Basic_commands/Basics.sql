-- --------------------------------------------------SELECT&FROM--------------------------------------

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

-- ---------------------------------------------------CREATE TABLE-----------------------------------

CREATE TABLE table_name (
    column_1 datatype,
    column_2 datatype,
    column_3 datatype
);

--Altertable
ALTER TABLE table_name
ADD column_name datatype;

-- ----------------------------------------------------CHECK------------------------------------------
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


-- -------------------------------------UPDATE---------------------------------------------------------------------------
-- To update a record in a table you use the UPDATE statement.

-- Use the WHERE condition to specify which records you want to update. It is possible to update one or more columns at a time. The syntax is:

UPDATE table_name
SET column1 = value1, 
    column2 = value2, ...
WHERE condition;

--Here is an example updating the Name of the record with Id 4:

UPDATE Person
SET Name = “Elton John”
WHERE Id = 4;



--You can also update columns in a table by using values from other tables. Use the JOIN clause to get data from multiple tables. The syntax is:

UPDATE table_name1
SET table_name1.column1 = table_name2.columnA
    table_name1.column2 = table_name2.columnB
FROM table_name1
JOIN table_name2 ON table_name1.ForeignKey = table_name2.Key


--Here is an example updating Manager of all records:

UPDATE Person
SET Person.Manager = Department.Manager
FROM Person
JOIN Department ON Person.DepartmentID = Department.ID


-- ----------------------------------------------GROUP BY---------------------------------------------------------
-- GROUP BY allows you to combine rows and aggregate data.

-- Here is the syntax of GROUP BY:

SELECT column_name, COUNT(*)
FROM table_name
GROUP BY column_name;



-- ---------------------------------------------HAVING--------------------------------------------------------
-- HAVING allows you to filter the data aggregated by the GROUP BY clause so that the user gets a limited set of records to view.

-- Here is the syntax of HAVING:

SELECT column_name, COUNT(*)
FROM table_name
GROUP BY column_name
HAVING COUNT(*) > value;

-- ---------------------------------------------AVG()-----------------------------------------------------------
-- “Average” is used to calculate the average of a numeric column from the set of rows returned by a SQL statement.

-- Here is the syntax for using the function:

SELECT groupingField, AVG(num_field)
FROM table1
GROUP BY groupingField

-- Here’s an example using the student table:

SELECT studentID, FullName, AVG(sat_score) 
FROM student 
GROUP BY studentID, FullName;

-- --------------------------AS-------------------------------------------------------------------------
-- AS allows you to rename a column or table using an alias.

SELECT user_only_num1 AS AgeOfServer, (user_only_num1 - warranty_period) AS NonWarrantyPeriod FROM server_table

-- This results in output as below.

+-------------+------------------------+
| AgeOfServer | NonWarrantyPeriod      | 
+-------------+------------------------+
|         36  |                     24 |
|         24  |                     12 | 
|         61  |                     49 |
|         12  |                      0 | 
|          6  |                     -6 |
|          0  |                    -12 | 
|         36  |                     24 |
|         36  |                     24 | 
|         24  |                     12 | 
+-------------+------------------------+


-- You can also use AS to assign a name to a table to make it easier to reference in joins.

SELECT ord.product, ord.ord_number, ord.price, cust.cust_name, cust.cust_number FROM customer_table AS cust

JOIN order_table AS ord ON cust.cust_number = ord.cust_number
-- This results in output as below.

+-------------+------------+-----------+-----------------+--------------+
| product     | ord_number | price     | cust_name       | cust_number  |
+-------------+------------+-----------+-----------------+--------------+
|     RAM     |   12345    |       124 | John Smith      |  20          |
|     CPU     |   12346    |       212 | Mia X           |  22          |
|     USB     |   12347    |        49 | Elise Beth      |  21          |
|     Cable   |   12348    |         0 | Paul Fort       |  19          |
|     Mouse   |   12349    |        66 | Nats Back       |  15          |
|     Laptop  |   12350    |       612 | Mel S           |  36          |
|     Keyboard|   12351    |        24 | George Z        |  95          |
|     Keyboard|   12352    |        24 | Ally B          |  55          |
|     Air     |   12353    |        12 | Maria Trust     |  11          |
+-------------+------------+-----------+-----------------+--------------+

-- ------------------------------------ORDER BY----------------------------------------------------------------
-- ORDER BY gives us a way to sort the result set by one or more of the items in the SELECT section.
--  Here is an SQL sorting the students by FullName in descending order.
--  The default sort order is ascending (ASC) but to sort in the opposite order (descending) you use DESC.
SELECT studentID, FullName, sat_score
FROM student
ORDER BY FullName DESC;