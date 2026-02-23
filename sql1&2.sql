-- DBMS -> Database Management System
-- Used to store and manage data.

-- RDBMS -> Relational Database Management System
-- Data stored in tables (rows and columns).
-- Examples: MYSQL, MS SQL, ORACLE

-- SQL -> Structured Query Language
-- Used to communicate with database.


-- SQL COMMAND TYPES

-- DDL (Data Definition Language)
-- Used to define structure.
-- Commands: CREATE, ALTER, DROP, SHOW, DESCRIBE
-- Auto commit.

-- DML (Data Manipulation Language)
-- Used to insert/update/delete data.
-- Commands: INSERT, UPDATE, DELETE

-- DQL (Data Query Language)
-- Used to retrieve data.
-- Command: SELECT

-- DCL (Data Control Language)
-- Used for permissions.
-- Commands: GRANT, REVOKE

-- TCL (Transaction Control Language)
-- Used for transaction control.
-- Commands: COMMIT, ROLLBACK



-- 1. CREATE DATABASE
-- Creates a new database named CSE

CREATE DATABASE CSE;



-- 2. SHOW DATABASES
-- Displays all databases available in server

SHOW DATABASES;



-- 3. USE DATABASE
-- Select database to perform operations

USE CSE;



-- 4. CREATE TABLE
-- Creates a table named CSE_STUDENTS

CREATE TABLE CSE_STUDENTS(
    ROLL_NO INT PRIMARY KEY,      -- Unique student roll number
    FIRST_NAME VARCHAR(30),       -- First name of student
    LAST_NAME VARCHAR(30),        -- Last name of student
    EMAIL VARCHAR(50),            -- Email address
    AGE INT                       -- Age of student
);



-- 5. SHOW TABLES
-- Displays all tables inside current database

SHOW TABLES;



-- 6. DESCRIBE TABLE
-- Shows structure of table

DESCRIBE CSE_STUDENTS;



-- 7. INSERT SINGLE ROW

INSERT INTO CSE_STUDENTS VALUES
(51,'GOVIND','JANGID','govindjangidt@gmail.com',19);



-- 8. INSERT MULTIPLE ROWS
-- Better approach for inserting multiple records

INSERT INTO CSE_STUDENTS VALUES
(47,'DILIP','KUMAWAT','dilipkumawat@gmail.com',20),
(50,'GOURAV','NAGORI','gouravnagori@gmail.com',21),
(17,'AMAN','RAJPUT','aman@gmail.com',22),
(44,'DEVANSH','MAINI','devansh@gmail.com',22),
(30,'ARYAN','KUMAR SINGH','aryan22@gmail.com',22),
(2,'ARYAN','SHARMA','aryan2@gmail.com',22),
(23,'AKSHAT','VERMA','akshat@gmail.com',22),
(18,'AMAY','RAJ','amay@gmail.com',22);



-- 9. SELECT DATA
-- Displays all records from table

SELECT * FROM CSE_STUDENTS;



-- 10. DROP DATABASE (Dangerous command)
-- Deletes database permanently

-- DROP DATABASE CSE;



-- 11. DROP TABLE (Dangerous command)
-- Deletes table permanently