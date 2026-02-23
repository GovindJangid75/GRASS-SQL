-- DML ---> DATA MANIPULATION LANGUAGE
-- Used to manipulate data inside tables.
-- Commands: INSERT, UPDATE, DELETE

-- DQL ---> DATA QUERY LANGUAGE
-- Used to fetch/query data.
-- Command: SELECT



-- DATA TYPES

-- NUMERIC DATA TYPES

-- BIT        -> stores bit values (1 to 64 bits)
-- TINYINT    -> very small integer
-- SMALLINT   -> small integer
-- MEDIUMINT  -> medium range integer
-- INT / INTEGER -> normal integer
-- BIGINT     -> very large integer
-- FLOAT      -> decimal numbers (approximate)
-- DOUBLE     -> high precision decimal
-- DECIMAL / DEC() -> exact decimal values (financial data)
-- BOOLEAN    -> true/false (0 or 1)



-- STRING DATA TYPES

-- CHAR(0-255)       -> fixed length string
-- VARCHAR(0-65535)  -> variable length string
-- BINARY            -> fixed binary data
-- VARBINARY         -> variable binary data
-- TINYTEXT          -> small text
-- TEXT              -> normal text
-- MEDIUMTEXT        -> larger text
-- LONGTEXT          -> very large text
-- TINYBLOB          -> small binary object
-- BLOB              -> binary object
-- MEDIUMBLOB        -> medium binary object
-- LONGBLOB          -> very large binary object
-- ENUM()            -> select one value from predefined list
-- SET()             -> multiple values allowed (0 to 64)



-- DATE AND TIME DATA TYPES

-- DATE       -> YYYY-MM-DD (1000-01-01 to 9999-12-31)
-- DATETIME   -> date + time (YYYY-MM-DD HH:MM:SS)
-- TIMESTAMP  -> auto tracking time (1970 to 2038)
-- TIME       -> HH:MM:SS
-- YEAR       -> four digit year



-- CONSTRAINTS AND PROPERTIES

-- NOT NULL     -> column cannot be empty
-- DEFAULT      -> sets default value
-- CHECK        -> validates condition
-- PRIMARY KEY  -> unique + not null
-- UNIQUE       -> duplicate values not allowed
-- FOREIGN KEY  -> relation between tables



-- CREATE DATABASE

CREATE DATABASE STUDENTSSS;

USE STUDENTSSS;



-- CREATE TABLE

CREATE TABLE student(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    AGE INT NOT NULL UNIQUE,
    CGPA INT CHECK (CGPA BETWEEN 0 AND 10)
);



-- INSERT DATA

-- Column order based insert

INSERT INTO student(id,name,AGE) VALUES(1,'GOVIND',23);

-- Insert including CGPA

INSERT INTO student(id,name,AGE,CGPA) VALUES(122,'GOVIND',23333,3);

INSERT INTO student(id,name,AGE) VALUES(2,'aman',222);
INSERT INTO student(id,name,AGE) VALUES(3,'dilip',22);

-- NOTE:
-- If we use:
-- INSERT INTO student VALUES(...)
-- then values must be in exact column sequence.



-- ALTER TABLE COMMANDS

-- Add new column

ALTER TABLE student
ADD COLUMN city VARCHAR(50);

-- Add column with DEFAULT value

ALTER TABLE student
ADD COLUMN COUNTRY VARCHAR(50) DEFAULT 'INDIA';

-- Modify datatype

ALTER TABLE student
MODIFY city VARCHAR(100);



-- SELECT DATA (DQL)

SELECT * FROM student;



-- CHECK TABLE STRUCTURE

DESC student;



-- DELETE COMMAND

-- Deletes specific rows based on condition

DELETE FROM student WHERE id = 1;

-- ROLLBACK
-- Works only if transaction not committed and storage engine supports it

ROLLBACK;



-- UPDATE COMMAND

-- Modify existing record

UPDATE student
SET name = 'GOVIND JANGID'
WHERE id = 1;



-- DROP TABLE (remove table completely)

-- DROP TABLE student;

-- DROP DATABASE (remove database completely)

-- DROP DATABASE STUDENTSSS;



-- HOMEWORK / PRACTICE

-- Practice DML Commands:
-- INSERT
-- UPDATE
-- DELETE

-- Practice DQL Command:
-- SELECT with conditions (WHERE)
