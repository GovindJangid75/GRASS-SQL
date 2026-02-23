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




