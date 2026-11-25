-- 1. DDL: Data Definition Language --

-- Exercise 1.1: Create a database --
CREATE DATABASE school_management;
USE school_management;

-- Exercise 1.2: Create a table named courses with id, course_name and credits --
CREATE TABLE courses(
    id   INT   AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100)  Not Null,
    credits Integer Not Null
);

-- 2. DML: Data Manipulation Language --
-- Exercise 2.1: Insert Data --
INSERT INTO courses (course_name, credits)
             VALUES ('Java Programming', '10'),
                    ('SQL Basics', '5'),
                    ('Web Development', '8');

-- Exercise 2.2: Update Data --
UPDATE courses SET credits = 15 WHERE course_name = 'Java Programming' ;                    
SELECT * FROM courses;

-- Exercise 2.3: Delete Data --
DELETE FROM courses WHERE id = 2;
SELECT * FROM courses;