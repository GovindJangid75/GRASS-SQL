-- Date 23-02-2026
-- LECTURE NO 10
-- TOPIC: SQL's Objects

USE COLLEGES;

-- 1.VIEWS IN SQL
-- Views are virtual tables based on existing tables.
-- They are used to provide a view of data.
-- They are created using SELECT statement.
-- It store the reference not physical data.

-- Advantages of Views
-- 1. Simplified Queries -- less typing and less data set
-- 2. Security -- control access to data
-- 3. Performance -- faster and easier to maintain


-- CREATE VIEW

SELECT * FROM IT_STD;
CREATE VIEW it_std_PASS AS
SELECT * FROM IT_STD WHERE `CGPA`>=7.5;


SELECT * FROM IT_STD_PASS;

-- 2. STORE PROCEDURES
-- Stored procedures are used to perform specific tasks.
-- They are stored in the database and can be called from any part of the database.
-- They are created using CREATE PROCEDURE statement.
-- Create once and used multiple times.
-- just like methods/functions in programming languages.

-- 1. IN PARAMETER 
-- 2. OUT PARAMETER



-- CREATE PROCEDURE
-- SYNTAX


CREATE PROCEDURE it_std_PRODCEDURE(IN CGPA_XYZ FLOAT)
BEGIN 
      SELECT * FROM it_std WHERE CGPA = CGPA_XYZ;
      
END $$ DELIMITER ;

call it_std_PRODCEDURE(8.7);






