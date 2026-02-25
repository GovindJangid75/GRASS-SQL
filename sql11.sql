-- DATE : 25 - 02 - 2023
-- LECTURE NO : 11
-- TOPIC : ER DIAGRAM


-- ER DIAGRAM INTRODUCTION

-- ER Diagram (Entity Relationship Diagram) is a visual
-- representation of database schema.
-- It shows entities, attributes and relationships between tables.
-- It is used to model database structure before implementation.


-- ER DIAGRAM CONCEPTS

-- 1. ENTITY
-- 2. ATTRIBUTE
-- 3. RELATIONSHIP


-- 1. ENTITY

-- Entity is a logical unit representing real-world object.
-- In database, entity represents a TABLE.
-- Entity is class in OOPS.

-- Examples:
-- STUDENT
-- COURSE
-- EMPLOYEE
-- DEPARTMENT

-- Types:
-- Strong Entity -> has primary key and independent existence
-- Weak Entity   -> depends on another entity


-- 2. ATTRIBUTE

-- Attribute is a property of entity.
-- Attribute represents COLUMN in table.

-- Examples:
-- Name
-- RollNo
-- Marks
-- Department


-- ATTRIBUTE TYPES

-- A. Simple Attribute
-- Single value attribute.
-- Example: RollNo, Name

-- Primary Key -> uniquely identifies record
-- Foreign Key -> references primary key of another table

-- B. Composite Attribute
-- Can be divided into smaller parts.
-- Example: Address (Street, City, State, Pincode)

-- C. Derived Attribute
-- Calculated from other attributes.
-- Example:
-- CGPA = Marks / TotalMarks
-- Age = CurrentYear - BirthYear

-- D. Multi-Valued Attribute
-- Can store multiple values.
-- Example: PhoneNumbers, Skills


-- 3. RELATIONSHIP

-- Relationship connects two or more entities.

-- Example:
-- STUDENT enrolls in COURSE


-- RELATIONSHIP TYPES

-- A. One-to-One (1:1)
-- One entity relates to only one entity.
-- Example: Person -> AadhaarCard

-- B. One-to-Many (1:N)
-- One entity relates to many entities.
-- Example: Department -> Employees
-- Foreign key placed on MANY side.

-- C. Many-to-One (N:1)
-- Many records relate to one entity.
-- Example: Students -> One College

-- D. Many-to-Many (M:N)
-- Multiple records relate to multiple records.
-- Example: Students <-> Courses

-- Many-to-Many cannot be implemented directly.
-- Use junction table.

-- Example:
-- STUDENT(StudentID, Name)
-- COURSE(CourseID, CourseName)
-- ENROLLMENT(StudentID, CourseID)


-- ADVANTAGES

-- Easy visualization
-- Better database design
-- Reduces redundancy
-- Improves data integrity