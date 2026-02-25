# 🌿 GRASS-SQL

<div align="center">

![MySQL](https://img.shields.io/badge/MySQL-8.0+-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/Language-SQL-orange?style=for-the-badge)
![Lectures](https://img.shields.io/badge/Lectures-10-green?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)

**A structured, lecture-by-lecture SQL learning repository covering everything from database fundamentals to views and stored procedures.**

</div>

---

## 📌 About

**GRASS-SQL** is a personal SQL learning journal by [Govind Jangid](https://github.com/GovindJangid75). Each `.sql` file represents a complete classroom session with detailed inline comments, real table creation, data insertion, and practical queries — making it easy to follow along and revise.

| | |
|---|---|
| 🗓️ **Duration** | February 2026 |
| 🛠️ **Database** | MySQL 8.0+ |
| 🎯 **Level** | Beginner → Intermediate |
| 🗃️ **Databases Used** | `CSE` · `COLLEGES` · `STUDENTSSS` · `SCHOOL_DB` · `COMPANY` · `IPL_DATABASE` |

---

## 📁 File Structure

```
GRASS-SQL/
│
├── .gitignore
├── README.md
├── sql1&2.sql     →  Lecture 1 & 2  |  SQL Basics, DDL, DML, first INSERT & SELECT
├── sql3.sql       →  Lecture 3      |  DDL deep dive, Data Types, ALTER, TRUNCATE vs DELETE
├── sql4.SQL       →  Lecture 4      |  Full Data Types reference, Constraints, DML operations
├── sql5.sql       →  Lecture 5      |  SELECT, WHERE, All Operators, LIKE, BETWEEN, REGEXP
├── sql6.sql       →  Lecture 6      |  Aggregate Functions, Subqueries, INSERT INTO SELECT
├── sql7.sql       →  Lecture 7      |  ORDER BY, LIMIT, GROUP BY, HAVING, Top-N Queries
├── SQL8.SQL       →  Lecture 8      |  JOINs (INNER, LEFT, RIGHT, FULL, SELF, CROSS)
├── SQL9.sql       →  Lecture 9      |  DCL (GRANT/REVOKE), TCL (Transactions, SAVEPOINT), Keys
├── sql10.sql      →  Lecture 10     |  SQL Objects: Views & Stored Procedures
└── mini.sql       →  Mini Project   |  IPL Management System (Capstone)
```

---

## 📖 Lecture Breakdown

<details>
<summary><strong>📗 Lecture 1 & 2 — SQL Basics, DDL, DML &nbsp;|&nbsp; <code>sql1&2.sql</code></strong></summary>
<br>

Introduces the core SQL command categories and creates the first database and table from scratch.

**Concepts Covered:**
- DBMS vs RDBMS vs SQL — conceptual overview
- All 5 SQL command types: **DDL, DML, DQL, DCL, TCL**
- `CREATE DATABASE` · `SHOW DATABASES` · `USE` · `SHOW TABLES` · `DESCRIBE`
- `CREATE TABLE` with data types and `PRIMARY KEY`
- `INSERT` — single row and multiple rows at once
- `SELECT * FROM` — retrieve all records
- Warning on destructive commands: `DROP DATABASE`, `DROP TABLE`

**Table Created:**
```sql
CREATE TABLE CSE_STUDENTS (
    ROLL_NO    INT PRIMARY KEY,
    FIRST_NAME VARCHAR(30),
    LAST_NAME  VARCHAR(30),
    EMAIL      VARCHAR(50),
    AGE        INT
);
```

</details>

---

<details>
<summary><strong>📗 Lecture 3 — DDL Deep Dive, Data Types, ALTER, TRUNCATE &nbsp;|&nbsp; <code>sql3.sql</code></strong></summary>
<br>

Explores the SQL engine, all basic data types, and table modification commands.

**Concepts Covered:**
- `CREATE DATABASE IF NOT EXISTS` — safe creation syntax
- Data types: `INT` · `CHAR` (fixed memory) vs `VARCHAR` (variable memory) · `FLOAT`
- Constraints: `NOT NULL` · `PRIMARY KEY` · `UNIQUE` · `AUTO_INCREMENT`
- `ALTER TABLE` — `RENAME COLUMN` · `ADD COLUMN` · `MODIFY` datatype
- Creates `COMPANY` database with `EMPLOYEE(EMP_ID, NAME, EMAIL, SALARY)` table

**TRUNCATE vs DELETE:**

| Feature | TRUNCATE | DELETE |
|---------|:--------:|:------:|
| WHERE condition | ❌ | ✅ |
| Rollback | ❌ | ✅ |
| Speed | ✅ Faster | Slower |
| Resets Auto-Increment | ✅ | ❌ |

</details>

---

<details>
<summary><strong>📗 Lecture 4 — Full Data Types Reference, Constraints, DML &nbsp;|&nbsp; <code>sql4.SQL</code></strong></summary>
<br>

A comprehensive reference lecture covering every MySQL data type and all DML operations.

**Numeric Types:**
`BIT` · `TINYINT` · `SMALLINT` · `MEDIUMINT` · `INT` · `BIGINT` · `FLOAT` · `DOUBLE` · `DECIMAL` · `BOOLEAN`

**String Types:**
`CHAR` · `VARCHAR` · `TINYTEXT` · `TEXT` · `MEDIUMTEXT` · `LONGTEXT` · `TINYBLOB` · `BLOB` · `MEDIUMBLOB` · `LONGBLOB` · `ENUM` · `SET`

**Date/Time Types:**
`DATE` · `DATETIME` · `TIMESTAMP` · `TIME` · `YEAR`

**Constraints:**
`NOT NULL` · `DEFAULT` · `CHECK` · `PRIMARY KEY` · `UNIQUE` · `FOREIGN KEY`

**DML Examples:**
```sql
INSERT INTO student(id, name, AGE) VALUES (1, 'GOVIND', 23);
UPDATE student SET name = 'GOVIND JANGID' WHERE id = 1;
DELETE FROM student WHERE id = 1;
ROLLBACK;
```

</details>

---

<details>
<summary><strong>📗 Lecture 5 — SELECT, WHERE, All Operators, Pattern Matching &nbsp;|&nbsp; <code>sql5.sql</code></strong></summary>
<br>

The most query-intensive lecture — covers every major filtering and pattern matching technique.

**Operator Priority:**
```
( )  →  NOT  →  AND  →  OR
```

**Operators Covered:**

| Type | Operators |
|------|-----------|
| Arithmetic | `+` `-` `*` `/` |
| Relational | `=` `!=` `<>` `>` `<` `>=` `<=` |
| Logical | `AND` `OR` `NOT` |
| Range | `BETWEEN 9.5 AND 10` |
| List | `IN (9.5, 9.9, 10)` |

**LIKE Pattern Matching:**

| Pattern | Matches |
|---------|---------|
| `'G%'` | Starts with G |
| `'%GA%'` | Contains GA anywhere |
| `'%G'` | Ends with G |
| `'_A%'` | Second character is A |

**MySQL REGEXP:**
```sql
SELECT * FROM STUDENTS WHERE NAME REGEXP '^G';
-- Note: SQL Server's [g]% syntax does NOT work in MySQL
```

</details>

---

<details>
<summary><strong>📗 Lecture 6 — Aggregate Functions, Subqueries, INSERT INTO SELECT &nbsp;|&nbsp; <code>sql6.sql</code></strong></summary>
<br>

Introduces functions that reduce multiple rows into a single summary value.

**Aggregate Functions:**

| Function | Description | NULL Handling |
|----------|-------------|:-------------:|
| `AVG()` | Average value | Ignores NULLs |
| `MAX()` | Maximum value | Ignores NULLs |
| `MIN()` | Minimum value | Ignores NULLs |
| `COUNT(col)` | Non-null row count | Ignores NULLs |
| `COUNT(*)` | Total row count | ✅ Includes NULLs |
| `SUM()` | Total sum | Ignores NULLs |

**Subquery — Student with highest CGPA:**
```sql
SELECT * FROM STUDENTS
WHERE CGPA = (SELECT MAX(CGPA) FROM STUDENTS);
```

**INSERT INTO SELECT — Copy filtered rows between tables:**
```sql
INSERT INTO ITSTD
SELECT * FROM IT_STD WHERE CGPA < 8.5;
```

**Modulo for branch assignment:**
```sql
UPDATE ITSTD SET BRANCH = 'IT'  WHERE ID % 2 = 0;  -- Even IDs → IT
UPDATE ITSTD SET BRANCH = 'CSE' WHERE ID % 2 = 1;  -- Odd IDs  → CSE
```

</details>

---

<details>
<summary><strong>📗 Lecture 7 — ORDER BY, LIMIT, GROUP BY, HAVING, Top-N &nbsp;|&nbsp; <code>sql7.sql</code></strong></summary>
<br>

Covers SQL clause execution order and advanced result filtering and sorting.

**SQL Logical Execution Order:**
```
FROM  →  WHERE  →  GROUP BY  →  HAVING  →  SELECT  →  ORDER BY  →  LIMIT
```

**Sorting & Pagination:**
```sql
-- Top 3 students by CGPA
SELECT NAME, CGPA FROM IT_STD ORDER BY CGPA DESC LIMIT 3;

-- Second highest CGPA
SELECT DISTINCT NAME, CGPA FROM IT_STD
ORDER BY CGPA DESC LIMIT 1 OFFSET 1;
```

**GROUP BY + HAVING:**
```sql
-- WHERE  → filters rows   (before grouping)
-- HAVING → filters groups (after grouping)
SELECT CGPA, COUNT(*) AS TOTAL
FROM IT_STD
GROUP BY CGPA
HAVING CGPA > 4.7;
```

</details>

---

<details>
<summary><strong>📗 Lecture 8 — JOINs &nbsp;|&nbsp; <code>SQL8.SQL</code></strong></summary>
<br>

Creates `SCHOOL_DB` with `STUDENT` and `DEPARTMENT` tables linked by `FOREIGN KEY`, demonstrating all join types.

**Schema:**
```sql
DEPARTMENT (ID, DEPT_NAME, DEPT_HEAD)
STUDENT    (ID, NAME, EMAIL, CITY, MARKS, DEPT_ID → DEPARTMENT.ID)
```

**Join Types:**

| Join | Result |
|------|--------|
| `INNER JOIN` | Only matching rows from both tables |
| `LEFT JOIN` | All left rows; NULL where no right match |
| `RIGHT JOIN` | All right rows; NULL where no left match |
| `FULL JOIN` | All rows from both (simulated via UNION in MySQL) |
| `SELF JOIN` | Table joined with itself |
| `CROSS JOIN` | Cartesian product of both tables |

**FULL JOIN simulation in MySQL:**
```sql
SELECT * FROM STUDENT LEFT JOIN DEPARTMENT ON STUDENT.DEPT_ID = DEPARTMENT.ID
UNION
SELECT * FROM STUDENT RIGHT JOIN DEPARTMENT ON STUDENT.DEPT_ID = DEPARTMENT.ID;
```

**Professional alias style:**
```sql
SELECT S.NAME, S.MARKS, D.DEPT_NAME
FROM STUDENT S
INNER JOIN DEPARTMENT D ON S.DEPT_ID = D.ID;
```

> 💡 The `ELECTRICAL` department has no students — it appears as NULL in INNER/LEFT joins, demonstrating real-world outer join behavior.

</details>

---

<details>
<summary><strong>📗 Lecture 9 — DCL, TCL, SQL Keys &nbsp;|&nbsp; <code>SQL9.sql</code></strong></summary>
<br>

Covers user access control, transaction management, and all SQL key types.

**DCL — Data Control Language:**
```sql
CREATE USER 'testuser'@'localhost' IDENTIFIED BY 'testpass';
GRANT  ALL PRIVILEGES ON *.* TO   'testuser'@'localhost';
REVOKE ALL PRIVILEGES ON *.* FROM 'testuser'@'localhost';
ALTER  USER 'testuser'@'localhost' IDENTIFIED BY 'testpass1';
```

**TCL — Transaction Control Language:**
```sql
BEGIN;
  INSERT INTO it_std VALUES (9, 'GOVIND JANGID', 'GOVIND@123', 10000, 7);
  SAVEPOINT s1;
  INSERT INTO it_std VALUES (9, 'GOVIND JANGID', 'GOVIND@123', 10000, 7);
  ROLLBACK TO s1;
COMMIT;
```

**SQL Key Types:**

| Key | Description |
|-----|-------------|
| **Primary Key** | Unique + Not Null; only one per table |
| **Foreign Key** | References primary key of another table |
| **Unique Key** | No duplicate values allowed |
| **Candidate Key** | Not null + unique; eligible to be primary key |
| **NOT NULL** | Column must always have a value |
| **Default Key** | Auto-assigns a default value if none given |
| **Check Key** | Validates a condition on column data |
| **Index Key** | Improves query lookup performance |

</details>

---

<details>
<summary><strong>📗 Lecture 10 — Views & Stored Procedures &nbsp;|&nbsp; <code>sql10.sql</code></strong></summary>
<br>

Introduces reusable, named database objects.

**Views — Virtual Tables:**
```sql
CREATE VIEW it_std_PASS AS
SELECT * FROM IT_STD WHERE CGPA >= 7.5;

SELECT * FROM IT_STD_PASS;
```

| ✅ Advantages | ❌ Limitations |
|--------------|---------------|
| Simplified queries | Cannot INSERT directly |
| Data security & access control | Cannot DELETE directly |
| Stores reference, not physical data | Cannot UPDATE directly |

**Stored Procedures — Reusable SQL Blocks:**
```sql
DELIMITER $$
CREATE PROCEDURE it_std_PROCEDURE(IN CGPA_XYZ FLOAT)
BEGIN
    SELECT * FROM it_std WHERE CGPA = CGPA_XYZ;
END $$
DELIMITER ;

CALL it_std_PROCEDURE(8.7);
```

- **IN parameter** — pass values into the procedure from outside
- **OUT parameter** — return values from the procedure *(to be expanded)*

</details>

---

<details>
<summary><strong>🏏 Mini Project — IPL Management System &nbsp;|&nbsp; <code>mini.sql</code></strong></summary>
<br>

A complete, real-world relational database project built using all concepts learned across 10 lectures.

**Database:** `IPL_DATABASE`

**Schema Design:**
```
TEAMS ──────────────────────────────────────────────┐
  └──< PLAYERS        (TEAM_ID  → TEAMS)             │
  └──< MATCHES        (TEAM1_ID, TEAM2_ID,            │
                       WINNER_TEAM_ID → TEAMS) ───────┘
          └──< PLAYER_PERFORMANCE  (MATCH_ID  → MATCHES,
                                    PLAYER_ID → PLAYERS)
```

**Tables Created:**

| Table | Columns |
|-------|---------|
| `TEAMS` | TEAM_ID, TEAM_NAME, CITY, OWNER |
| `PLAYERS` | PLAYER_ID, PLAYER_NAME, ROLE, AGE, COUNTRY, TEAM_ID |
| `MATCHES` | MATCH_ID, TEAM1_ID, TEAM2_ID, MATCH_DATE, VENUE, WINNER_TEAM_ID |
| `PLAYER_PERFORMANCE` | PERF_ID, MATCH_ID, PLAYER_ID, RUNS, BALLS, WICKETS, CATCHES |

**Teams:** MI · CSK · RCB · KKR · RR

**Players:** Rohit Sharma · Bumrah · Dhoni · Jadeja · Virat Kohli · Maxwell · Russell · Narine · Buttler · Ashwin

**Key Queries:**
```sql
-- Orange Cap — Top Run Scorer
SELECT P.PLAYER_NAME, SUM(PP.RUNS) AS TOTAL_RUNS
FROM PLAYER_PERFORMANCE PP
JOIN PLAYERS P ON PP.PLAYER_ID = P.PLAYER_ID
GROUP BY P.PLAYER_NAME
ORDER BY TOTAL_RUNS DESC LIMIT 1;

-- Purple Cap — Top Wicket Taker
SELECT P.PLAYER_NAME, SUM(PP.WICKETS) AS TOTAL_WICKETS
FROM PLAYER_PERFORMANCE PP
JOIN PLAYERS P ON PP.PLAYER_ID = P.PLAYER_ID
GROUP BY P.PLAYER_NAME
ORDER BY TOTAL_WICKETS DESC LIMIT 1;

-- Points Table — Most Wins
SELECT T.TEAM_NAME, COUNT(M.MATCH_ID) AS WINS
FROM MATCHES M
JOIN TEAMS T ON M.WINNER_TEAM_ID = T.TEAM_ID
GROUP BY T.TEAM_NAME
ORDER BY WINS DESC;

-- Highest Score in a Single Match (Subquery)
SELECT * FROM PLAYER_PERFORMANCE
WHERE RUNS = (SELECT MAX(RUNS) FROM PLAYER_PERFORMANCE);

-- Match Details with Team Names (Multi-JOIN)
SELECT M.MATCH_ID,
       T1.TEAM_NAME AS TEAM1,
       T2.TEAM_NAME AS TEAM2,
       TW.TEAM_NAME AS WINNER
FROM MATCHES M
JOIN TEAMS T1 ON M.TEAM1_ID = T1.TEAM_ID
JOIN TEAMS T2 ON M.TEAM2_ID = T2.TEAM_ID
JOIN TEAMS TW ON M.WINNER_TEAM_ID = TW.TEAM_ID;
```

**Concepts Applied:** `CREATE TABLE` · `FOREIGN KEY` · `JOIN` · `GROUP BY` · `ORDER BY` · `LIMIT` · `SUM()` · `COUNT()` · `MAX()` · `AVG()` · `MIN()` · Subqueries · `LIKE` · `RLIKE`

</details>

---

## 🧠 Full Topics Overview

| Category | Topics |
|----------|--------|
| **DDL** | CREATE, ALTER, DROP, TRUNCATE, RENAME, DESCRIBE |
| **DML** | INSERT, UPDATE, DELETE |
| **DQL** | SELECT, WHERE, ORDER BY, LIMIT, OFFSET, GROUP BY, HAVING |
| **DCL** | GRANT, REVOKE, CREATE USER, ALTER USER |
| **TCL** | BEGIN, COMMIT, ROLLBACK, SAVEPOINT |
| **Data Types** | INT, VARCHAR, CHAR, FLOAT, DECIMAL, BOOLEAN, ENUM, DATE, TIMESTAMP, BLOB, TEXT |
| **Constraints** | PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL, DEFAULT, CHECK |
| **Operators** | Arithmetic, Relational, Logical, BETWEEN, IN, LIKE, REGEXP |
| **Aggregate Functions** | AVG, MAX, MIN, COUNT, SUM |
| **Joins** | INNER, LEFT, RIGHT, FULL (UNION), SELF, CROSS |
| **Subqueries** | Nested SELECT, INSERT INTO SELECT |
| **SQL Objects** | Views, Stored Procedures (IN / OUT parameters) |
| **SQL Keys** | Primary, Foreign, Unique, Candidate, NOT NULL, Default, Check, Index |

---

## 🚀 Getting Started

### Prerequisites

- [MySQL 8.0+](https://dev.mysql.com/downloads/)
- SQL client of your choice: [MySQL Workbench](https://www.mysql.com/products/workbench/) · [DBeaver](https://dbeaver.io/) · `mysql` CLI

### Setup

```bash
# 1. Clone the repository
git clone https://github.com/GovindJangid75/GRASS-SQL.git
cd GRASS-SQL

# 2. Connect to MySQL
mysql -u root -p

# 3. Run any lecture file
mysql -u root -p < sql5.sql

# Or from inside the MySQL shell
SOURCE /path/to/GRASS-SQL/sql7.sql;
```

### Recommended Learning Order

```
sql1&2.sql  →  sql3.sql  →  sql4.SQL  →  sql5.sql  →  sql6.sql
            →  sql7.sql  →  SQL8.SQL  →  SQL9.sql  →  sql10.sql  →  mini.sql
```

---

## 👤 Author

<div align="center">

**Govind Jangid**

[![GitHub](https://img.shields.io/badge/GitHub-GovindJangid75-181717?style=for-the-badge&logo=github)](https://github.com/GovindJangid75)

*Written session-by-session as part of a structured SQL learning course — February 2026*

</div>