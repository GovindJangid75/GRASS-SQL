-- date: 13 FEB 2026
-- LECTURE NO 6

USE COLLEGES;

SELECT * FROM STUDENTS;



-- Insert one more record
-- NULL means no value stored in CGPA column

INSERT INTO STUDENTS 
VALUES (6,'GOVIND JALA','GOVIND@123',10000,NULL);



-- AGGREGATE FUNCTIONS
-- Aggregate functions operate on multiple rows
-- and return a single value.

-- Important:
-- Aggregate functions ignore NULL values
-- except COUNT(*)



-- 1. AVG() FUNCTION
-- Calculates average of non-null values

SELECT AVG(CGPA) AS "Average CGPA"
FROM STUDENTS;

-- If CGPA is NULL in any row,
-- AVG will ignore that row.



-- 2. MAX() FUNCTION
-- Returns maximum value

SELECT MAX(CGPA) AS "Max CGPA in Students"
FROM STUDENTS;



-- 3. MIN() FUNCTION
-- Returns minimum value

SELECT MIN(CGPA) AS "Min CGPA in Students"
FROM STUDENTS;



-- 4. COUNT() FUNCTION

-- COUNT(column_name)
-- Counts only non-null values

SELECT COUNT(CGPA) AS "Non Null CGPA Count"
FROM STUDENTS;

-- COUNT(*)
-- Counts total number of rows including NULL values

SELECT COUNT(*) AS "Total Students"
FROM STUDENTS;



-- 5. SUM() FUNCTION
-- Adds all non-null values

SELECT SUM(CGPA) AS "Total CGPA Sum"
FROM STUDENTS;



-- SUBQUERY (NESTED QUERY)

-- Subquery = query inside another query
-- Execution order:
-- 1. Inner query executes first
-- 2. Outer query uses result of inner query

-- Example:
-- Find student(s) having highest CGPA

SELECT *
FROM STUDENTS
WHERE CGPA = (SELECT MAX(CGPA) FROM STUDENTS);



-- PRACTICAL EXAMPLE WITH NEW TABLES

CREATE TABLE IT_STD (
    ID INT,
    NAME VARCHAR(30),
    EMAIL VARCHAR(30),
    SALARY INT,
    CGPA FLOAT
);

INSERT INTO IT_STD VALUES
(1,'GOVIND JANGID','GOVIND@123',10000,7),
(2,'GORUAV NAGORI','NAGORI@123',10000,9.7),
(3,'DILIP KUMAWAT','DILIP@123',10000,8.7),
(4,'AMAN KUMAR','AMAN@123',10000,7.7);



-- Create second table

CREATE TABLE ITSTD (
    ID INT,
    NAME VARCHAR(30),
    EMAIL VARCHAR(30),
    SALARY INT,
    CGPA FLOAT
);



-- Insert data from one table into another
-- This is called INSERT INTO ... SELECT

INSERT INTO ITSTD
SELECT * FROM IT_STD
WHERE CGPA < 8.5;

-- Only students with CGPA less than 8.5 copied

SELECT * FROM ITSTD;



-- Add new column

ALTER TABLE ITSTD
ADD COLUMN BRANCH VARCHAR(30);



-- Assign branch based on ID using MODULO operator (%)

-- Even ID → IT
UPDATE ITSTD
SET BRANCH = 'IT'
WHERE ID % 2 = 0;

-- Odd ID → CSE
UPDATE ITSTD
SET BRANCH = 'CSE'
WHERE ID % 2 = 1;

SELECT * FROM ITSTD;



-- Calculate average CGPA of IT branch students

SELECT AVG(CGPA) AS "Average CGPA of IT Branch"
FROM ITSTD
WHERE BRANCH = 'IT';
