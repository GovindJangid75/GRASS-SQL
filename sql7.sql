-- date: 16 FEB 2026
-- LECTURE NO 7

-- SQL CLAUSE EXECUTION FLOW (logical understanding)

-- FROM      -> decide from which table data comes
-- WHERE     -> filter rows one by one (before grouping)
-- GROUP BY  -> group rows based on column
-- HAVING    -> filter groups (after grouping)
-- SELECT    -> choose columns to display
-- ORDER BY  -> sort results
-- LIMIT     -> restrict number of rows


USE COLLEGES;



-- Display table data

SELECT * FROM IT_STD;



-- ORDER BY
-- Used to sort records

-- ASC -> ascending order (default)
-- DESC -> descending order

SELECT * 
FROM IT_STD
ORDER BY CGPA ASC;

SELECT *
FROM IT_STD
ORDER BY CGPA DESC;



-- LIMIT
-- Restricts number of rows returned

-- First 3 students sorted by name

SELECT *
FROM IT_STD
ORDER BY NAME ASC
LIMIT 3;


-- Top 3 students with highest CGPA

SELECT *
FROM IT_STD
ORDER BY CGPA DESC
LIMIT 3;



-- GROUP BY
-- Groups rows having same values

-- Count how many students exist with same name

SELECT NAME, COUNT(*) AS TOTAL
FROM IT_STD
GROUP BY NAME;



-- TOP N QUERY (important interview concept)

-- Top 3 students based on CGPA

SELECT NAME, CGPA
FROM IT_STD
ORDER BY CGPA DESC
LIMIT 3;


-- SECOND HIGHEST CGPA

-- LIMIT offset method
-- Syntax: LIMIT offset, count

SELECT NAME, CGPA
FROM IT_STD
ORDER BY CGPA DESC
LIMIT 1,1;     -- skip 1 row, show next 1 row


-- Alternative method using OFFSET keyword

SELECT DISTINCT NAME, CGPA
FROM IT_STD
ORDER BY CGPA DESC
LIMIT 1 OFFSET 1;



-- HAVING CLAUSE
-- HAVING filters groups AFTER GROUP BY
-- WHERE filters rows BEFORE GROUP BY

SELECT CGPA, COUNT(*) AS TOTAL
FROM IT_STD
GROUP BY CGPA
HAVING CGPA > 4.7;



-- Example: Salary grouping

SELECT SALARY, COUNT(*) AS TOTAL
FROM IT_STD
GROUP BY SALARY
HAVING SALARY = 10000;


-- REGEX SEARCH USING RLIKE
-- RLIKE allows regular expression pattern matching

-- [^aeiou] means:
-- any character that is NOT a vowel

SELECT *
FROM IT_STD
WHERE NAME RLIKE '[^aeiou]';
