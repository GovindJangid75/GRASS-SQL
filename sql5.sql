-- Active connection info (optional comment)
-- date: 11-02-2026

-- SELECT QUERY (DQL)
-- SELECT is used to retrieve data from database tables.


USE COLLEGES;



-- CREATE TABLE

CREATE TABLE STUDENTS (
    ID INT,
    NAME VARCHAR(30),
    EMAIL VARCHAR(30),
    SALARY INT,
    CGPA INT
);



-- MODIFY COLUMN DATA TYPE
-- Changing CGPA datatype from INT to FLOAT

ALTER TABLE STUDENTS
MODIFY CGPA FLOAT;



-- INSERT DATA

INSERT INTO STUDENTS VALUES (1,'GOVIND JANGID','GOVIND@123',10000,9.7);
INSERT INTO STUDENTS VALUES (2,'NAGORI','NAGORI@123',10000,9.5);
INSERT INTO STUDENTS VALUES (3,'DILIP','DILIP@123',10000,9.9);
INSERT INTO STUDENTS VALUES (4,'ARYAN','ARYAN@123',10000,9.8);
INSERT INTO STUDENTS VALUES (5,'DEVANSH','DEVANSH@123',10000,9.6);



-- BASIC SELECT COMMANDS

-- Select all columns
SELECT * FROM STUDENTS;

-- Select specific column
SELECT NAME FROM STUDENTS;

-- Select multiple columns
SELECT NAME, EMAIL FROM STUDENTS;



-- COLUMN ALIAS (AS keyword)
-- Temporary rename of column in output

SELECT NAME AS STDNAME, EMAIL
FROM STUDENTS;



-- WHERE CLAUSE
-- Used to filter records based on condition

SELECT NAME
FROM STUDENTS
WHERE NAME = 'NAGORI';



-- DELETE COMMAND
-- Removes specific records based on condition

DELETE FROM STUDENTS
WHERE NAME = 'GOVIND JANGID';



-- OPERATORS

-- 1. ARITHMETIC OPERATORS
-- + addition
-- - subtraction
-- * multiplication
-- / division

-- Example: Increase CGPA value

UPDATE STUDENTS
SET CGPA = CGPA + 0.1;

-- Note:
-- MySQL safe update mode may show warning when updating entire column.



-- 2. RELATIONAL OPERATORS
-- = equal
-- <> or != not equal
-- > greater than
-- < less than
-- >= greater or equal
-- <= less or equal

SELECT * FROM STUDENTS WHERE CGPA < 9.5;
SELECT * FROM STUDENTS WHERE CGPA > 9.5;
SELECT * FROM STUDENTS WHERE CGPA != 9.7;
SELECT * FROM STUDENTS WHERE CGPA <> 9.7;



-- 3. LOGICAL OPERATORS

-- AND -> both conditions must be true

SELECT *
FROM STUDENTS
WHERE CGPA > 9.5 AND CGPA < 9.9;

-- OR -> any one condition true

SELECT *
FROM STUDENTS
WHERE CGPA > 9.5 OR CGPA < 9.9;

-- NOT operator
-- NOT executes before OR unless brackets used

SELECT *
FROM STUDENTS
WHERE NOT CGPA > 9.5 OR CGPA < 2.9;

-- Using brackets to control execution priority

SELECT *
FROM STUDENTS
WHERE NOT (CGPA < 9.5 OR CGPA < 2.9);



-- PRIORITY ORDER OF LOGICAL OPERATORS

-- 1. Brackets ()
-- 2. NOT
-- 3. AND
-- 4. OR



-- BETWEEN OPERATOR
-- Used for range checking (inclusive)

SELECT *
FROM STUDENTS
WHERE CGPA BETWEEN 9.5 AND 10;



-- IN OPERATOR
-- Used to match multiple values

SELECT *
FROM STUDENTS
WHERE CGPA IN (9.5, 9.9, 10);



-- LIKE OPERATOR (Pattern Matching)

-- %  -> any number of characters
-- _  -> single character

-- Start with 'G'
SELECT *
FROM STUDENTS
WHERE NAME LIKE 'G%';

-- Contains 'GA' anywhere
SELECT *
FROM STUDENTS
WHERE NAME LIKE '%GA%';

-- Ends with 'G'
SELECT *
FROM STUDENTS
WHERE NAME LIKE '%G';

-- Second character is A
SELECT *
FROM STUDENTS
WHERE NAME LIKE '_A%';



-- Additional LIKE examples

SELECT NAME FROM STUDENTS WHERE NAME LIKE '%R_';

SELECT *
FROM STUDENTS
WHERE NAME LIKE 'G%' AND CGPA >= 9;



-- IMPORTANT NOTE:
-- Pattern like "[g]%" works in SQL Server,
-- but NOT in MySQL.
-- MySQL uses REGEXP instead:

SELECT NAME
FROM STUDENTS
WHERE NAME REGEXP '^G';



-- DROP TABLE (optional)

-- DROP TABLE STUDENTS;
