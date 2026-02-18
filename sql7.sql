-- date 16 feb 2026
-- LECT NO 7
-- WHERE    -->    check each data one by one
-- SELECT   -->   Specify which data you want to get from multiple table
-- FROM     -->    specify from which table you want to get data
-- JOIN     -->    combine data from multiple table
-- GROUP BY -->    specify which data you want to get from multiple table
-- ORDER BY -->    sorts the results
-- HAVING BY-->    filters groups after the group by operation
-- LIMIT    -->    restrict the numbers of rows returned



use COLLEGES;

SELECT * from IT_STD;   

-- SELECT "name", "MAIL"
-- FROM IT_STD 
-- WHERE CGPA > 5 
-- GROUP BY "name";


-- ORDER BY
SELECT * FROM it_std ORDER BY CGPA ASC;
SELECT * FROM it_std ORDER BY CGPA DESC;


-- LIMIT 
SELECT * FROM it_std ORDER BY NAME ASC LIMIT 3;
SELECT * FROM it_std ORDER BY CGPA DESC LIMIT 3;


-- GROUP BY
SELECT NAME ,COUNT(*) FROM it_std GROUP BY NAME;


-- top 3 students with highest cgpa
select name, cgpa from it_std order by cgpa desc limit 3;


-- second highest cgpa 
select name, cgpa from it_std order by cgpa desc limit 1,1;
select DISTINCT name, cgpa from it_std order by cgpa desc limit 1 OFFSET 1;


-- having : filters groups after the group by operation
select cgpa, COUNT(*) from it_std GROUP BY CGPA HAVING CGPA>4.7;



select SALARY, COUNT(*) from it_std GROUP BY SALARY HAVING SALARY=10000;


-- rlike
select * from it_std where name rlike '[^aeiou]';

