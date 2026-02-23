-- DDL --> DATA DEFINITION LANGUAGE
-- Used to define database structure.
-- Commands: CREATE, ALTER, DROP, TRUNCATE, RENAME


-- SQL ENGINE
-- SQL engine checks syntax errors, executes query,
-- and communicates with database storage system.



-- CREATE DATABASE
-- IF NOT EXISTS prevents error if database already exists

CREATE DATABASE IF NOT EXISTS COLLEGES;

SHOW DATABASES;

USE COLLEGES;



-- DATA TYPES

-- INT      -> Integer numbers
-- CHAR     -> Fixed length. Example CHAR(30)
--             Even if value small, full memory reserved.
--             Example: CHAR(30) with "GOVIND" still uses 30 size.
--             Used in fixed-length fields like phone number.

-- VARCHAR  -> Variable length. Memory efficient.
--             Stores only actual data length.
--             Example VARCHAR(30) can store upto 30 characters.

-- FLOAT    -> Decimal numbers.



-- CONSTRAINTS (Optional column rules)

-- NOT NULL       -> Value cannot be empty
-- NULL           -> Allows empty value
-- PRIMARY KEY    -> Unique + Not Null
-- UNIQUE         -> No duplicate allowed
-- AUTO_INCREMENT -> Automatically increases value



-- CREATE TABLE

CREATE TABLE STUDENT (
    RTUNO INT,
    NAME CHAR(30) NOT NULL,
    AGE FLOAT
);

SHOW TABLES;

DESCRIBE STUDENT;
DESC STUDENT;



-- ALTER COMMAND
-- Used to modify existing table structure.

-- Rename column NAME to STUDENTNAME

ALTER TABLE STUDENT
RENAME COLUMN NAME TO STUDENTNAME;

DESCRIBE STUDENT;



-- INSERT DATA


INSERT INTO STUDENT VALUES(1,'GOVIND',22);
INSERT INTO STUDENT VALUES(2,'NAGORI',22);



-- QUESTION PART

-- Create new database COMPANY

CREATE DATABASE IF NOT EXISTS COMPANY;

USE COMPANY;



-- Create employee table

CREATE TABLE EMPLOYEE(
    EMP_ID INT PRIMARY KEY,
    NAME VARCHAR(30),
    EMAIL VARCHAR(30),
    SALARY INT
);

DESCRIBE EMPLOYEE;



-- Insert records

INSERT INTO EMPLOYEE VALUES
(1,'GOVIND','GOVIND@gmail',2220000),
(2,'NAGORI','NAGORI@gmail',220000),
(3,'DILIP','DILIP@gmail',22300),
(4,'ARYAN','ARYAN@gmail',22200),
(5,'DEVANSH','DEVANSH@gmail',233200),
(6,'AYUSH','AYUSH@gmail',123300),
(7,'AMAN','AMAN@gmail',2220000),
(8,'ANKIT','ANKIT@gmail',22200),
(9,'AKSHAT','AKSHAT@gmail',22200),
(10,'AMAY','AMAY@gmail',22200);



-- SELECT COMMAND

SELECT * FROM EMPLOYEE;

SELECT NAME FROM EMPLOYEE;



-- TRUNCATE COMMAND

-- TRUNCATE removes ALL data from table.
-- Table structure remains.
-- Faster than DELETE.
-- Cannot rollback in most cases.

TRUNCATE TABLE EMPLOYEE;



-- DIFFERENCE BETWEEN TRUNCATE AND DELETE

-- DELETE:
-- Deletes specific rows using WHERE condition.
-- Can be rolled back (if transaction enabled).
-- Slower because row-by-row deletion.

-- TRUNCATE:
-- Removes all rows instantly.
-- Cannot use WHERE condition.
-- Resets auto increment.
-- Faster operation.



-- ALTER TABLE ADD COLUMN

ALTER TABLE EMPLOYEE
ADD COLUMN CITY VARCHAR(30);



-- Rename column CITY to ADDRESS

ALTER TABLE EMPLOYEE
RENAME COLUMN CITY TO ADDRESS;



-- Modify datatype using ALTER

ALTER TABLE EMPLOYEE
MODIFY ADDRESS VARCHAR(50);



-- DROP TABLE (Deletes table permanently)

DROP TABLE EMPLOYEE;



-- DROP DATABASE (Deletes database permanently)

DROP DATABASE COMPANY;
