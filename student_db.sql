CREATE DATABASE IF NOT EXISTS student_db DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE student_db;
CREATE TABLE student(
                        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                        name VARCHAR(100) NOT NULL,
                        class_group VARCHAR(50) NOT NULL,
                        create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO student (name, class_group)
VALUES ('Erik Andersson', 'G1'),
       ('Anna Johansson', 'G1'),
       ('Lars Karlsson', 'G2'),
       ('Maria Nilsson', 'G2'),
       ('Gustav Eriksson', 'G1'),
       ('Ingrid Larsson', 'G3'),
       ('Olof Olsson', 'G3'),
       ('Karin Persson', 'G2'),
       ('Anders Svensson', 'G1'),
       ('Maja Gustafsson', 'G3'),
       ('Nils Pettersson', 'G2'),
       ('Astrid Jonsson', 'G3'),
       ('Per Hansson', 'G1'),
       ('Linnea Bengtsson', 'G2'),
       ('Johan Lindberg', 'G3');

 -- 3. DQL: Data Query Language --
 -- Exercise 3.1: Basic Select --      
 SELECT * FROM student;  

 -- Exercise 3.2: Filtering --
 SELECT * FROM student WHERE class_group = 'G1';   

 -- Exercise 3.3: Pattern Matching
 -- Find all students whose names start with the letter 'J' --
 SELECT * FROM student WHERE name LIKE 'j%'; 



 -- Create attendance table --
 CREATE TABLE IF NOT EXISTS attendance (
                                          id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                          student_id INT NOT NULL,
                                          attendance_date DATE NOT NULL DEFAULT (CURRENT_DATE),
    status ENUM('Present', 'Absent') NOT NULL,
    FOREIGN KEY (student_id) REFERENCES student(id),
    UNIQUE (student_id, attendance_date)
    );

    INSERT INTO attendance (student_id, attendance_date, status)
VALUES (1, '2024-01-01', 'Present'),
       (2, '2024-01-01', 'Absent'),
       (3, '2024-01-01', 'Present'),
       (4, '2024-01-01', 'Present'),
       (5, '2024-01-01', 'Absent'),
       (6, '2024-01-01', 'Present'),
       (7, '2024-01-01', 'Present'),
       (8, '2024-01-01', 'Absent'),
       (9, '2024-01-01', 'Present'),
       (10, '2024-01-01', 'Present'),
       (11, '2024-01-01', 'Absent'),
       (12, '2024-01-01', 'Present'),
       (13, '2024-01-01', 'Present'),
       (14, '2024-01-01', 'Absent'),
       (15, '2024-01-01', 'Present'),
       (1, '2024-01-02', 'Absent'),
       (2, '2024-01-02', 'Present'),
       (3, '2024-01-02', 'Absent'),
       (4, '2024-01-02', 'Present'),
       (5, '2024-01-02', 'Present'),
       (6, '2024-01-02', 'Absent'),
       (7, '2024-01-02', 'Present'),
       (8, '2024-01-02', 'Present'),
       (9, '2024-01-02', 'Absent'),
       (10, '2024-01-02', 'Present'),
       (11, '2024-01-02', 'Present'),
       (12, '2024-01-02', 'Absent'),
       (13, '2024-01-02', 'Present'),
       (14, '2024-01-02', 'Present'),
       (15, '2024-01-02', 'Absent'),
       (1, '2024-01-03', 'Present'),
       (2, '2024-01-03', 'Present'),
       (3, '2024-01-03', 'Present'),
       (4, '2024-01-03', 'Absent'),
       (5, '2024-01-03', 'Present'),
       (6, '2024-01-03', 'Present'),
       (7, '2024-01-03', 'Absent'),
       (8, '2024-01-03', 'Present'),
       (9, '2024-01-03', 'Present'),
       (10, '2024-01-03', 'Absent'),
       (11, '2024-01-03', 'Present'),
       (12, '2024-01-03', 'Present'),
       (13, '2024-01-03', 'Absent'),
       (14, '2024-01-03', 'Present'),
       (15, '2024-01-03', 'Present'),
       (1, '2024-01-04', 'Present'),
       (2, '2024-01-04', 'Absent'),
       (3, '2024-01-04', 'Present'),
       (4, '2024-01-04', 'Present'),
       (5, '2024-01-04', 'Present'),
       (6, '2024-01-04', 'Absent'),
       (7, '2024-01-04', 'Present'),
       (8, '2024-01-04', 'Present'),
       (9, '2024-01-04', 'Present'),
       (10, '2024-01-04', 'Absent'),
       (11, '2024-01-04', 'Present'),
       (12, '2024-01-04', 'Present'),
       (13, '2024-01-04', 'Present'),
       (14, '2024-01-04', 'Absent'),
       (15, '2024-01-04', 'Present'),
       (1, '2024-01-05', 'Absent'),
       (2, '2024-01-05', 'Present'),
       (3, '2024-01-05', 'Present'),
       (4, '2024-01-05', 'Absent'),
       (5, '2024-01-05', 'Present'),
       (6, '2024-01-05', 'Present'),
       (7, '2024-01-05', 'Present'),
       (8, '2024-01-05', 'Absent'),
       (9, '2024-01-05', 'Present'),
       (10, '2024-01-05', 'Present'),
       (11, '2024-01-05', 'Present'),
       (12, '2024-01-05', 'Absent'),
       (13, '2024-01-05', 'Present'),
       (14, '2024-01-05', 'Present'),
       (15, '2024-01-05', 'Absent'),
       (1, '2024-01-06', 'Present'),
       (2, '2024-01-06', 'Present'),
       (3, '2024-01-06', 'Absent'),
       (4, '2024-01-06', 'Present'),
       (5, '2024-01-06', 'Absent'),
       (6, '2024-01-06', 'Present'),
       (7, '2024-01-06', 'Present'),
       (8, '2024-01-06', 'Present'),
       (9, '2024-01-06', 'Absent'),
       (10, '2024-01-06', 'Present'),
       (11, '2024-01-06', 'Absent'),
       (12, '2024-01-06', 'Present'),
       (13, '2024-01-06', 'Present'),
       (14, '2024-01-06', 'Present'),
       (15, '2024-01-06', 'Present'),
       (1, '2024-01-07', 'Present'),
       (2, '2024-01-07', 'Absent'),
       (3, '2024-01-07', 'Present'),
       (4, '2024-01-07', 'Present');

SELECT * FROM attendance;

-- 4. Joins and Relationships --

-- Exercise 4.1: Inner Join --
SELECT
    s.name,
    a.attendance_date,
    a.status
FROM student s
         INNER JOIN attendance a ON s.id = a.student_id;

-- Exercise 4.2: Left Join --
INSERT INTO student (name, class_group)
VALUES (' Test Sofia Bergström', 'G1');      

SELECT
    s.name,
    a.attendance_date,
    a.status
FROM student s
         LEFT JOIN attendance a ON s.id = a.student_id;

-- 5. Aggregation and Grouping --

-- Exercise 5.1: Count --
SELECT COUNT(*)  FROM student;
SELECT COUNT(*) AS total_students FROM student;

-- Exercise 5.2: Group By --
SELECT status, COUNT(*) AS total FROM attendance GROUP BY status;

-- Exercise 5.3: Group By with Join --
-- Calculate the number of days each student has been 'Present'. Display the student's name and the count. --
SELECT s.name , COUNT(a.id) AS present_days 
                               FROM student s LEFT JOIN attendance a
                               ON s.id = a.student_id
                               AND a.status = 'Present'
                               GROUP BY s.id, s.name;
