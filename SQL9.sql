-- date 20 -02-2026
-- LECTURE NO 9
-- TOPIC:  DCL

select User , host from mysql.user;

-- CREATE USER
CREATE USER 'testuser'@'localhost' IDENTIFIED BY 'testpass';
-- grant cmd
GRANT ALL PRIVILEGES ON *.* TO 'testuser'@'localhost';
-- REVOKE cmd

REVOKE ALL PRIVILEGES ON *.* FROM 'testuser'@'localhost';


-- change user local host

ALTER USER 'testuser'@'localhost' IDENTIFIED BY 'testpass1';


-- tcl -- transaction control language

use colleges;

begin;
INSERT into it_std VALUES (9,'GOVIND JANGID','GOVIND@123',10000,7);
SAVEPOINT s1;
INSERT into it_std VALUES (9,'GOVIND JANGID','GOVIND@123',10000,7);
SAVEPOINT s4;
INSERT into it_std VALUES (9,'GOVIND JANGID','GOVIND@123',10000,7);
SAVEPOINT s3;
INSERT into it_std VALUES (9,'GOVIND JANGID','GOVIND@123',10000,7);
SAVEPOINT s2;
INSERT into it_std VALUES (9,'GOVIND JANGID','GOVIND@123',10000,7);



ROLLBACK TO s1; 
SELECT * FROM itstd;
COMMIT;
SELECT * FROM itstd;


-- sql keys
-- 1.primary key -- not null and unique and not duplicate && only one key for one table
-- 2.foreign key -- primary key for another table  
-- 3.unique key --
-- 4. candidate key -- not null and unique
-- 5. not null key -- not null
-- 6. default key -- default value
-- 7. check key -- check condition
-- 8. index key -- index
