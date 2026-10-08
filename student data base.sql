CREATE DATABASE StudentDB;
USE StudentDB;

CREATE TABLE Students (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Department VARCHAR(30),
    Marks INT
);

INSERT INTO Students VALUES
(101, 'Padma', 20, 'AIML', 85),
(102, 'Apoorva', 20, 'CSE', 78),
(103, 'Akshaya', 21, 'AIML', 92),
(104, 'Krishna', 20, 'ECE', 74),
(105, 'Ravi', 21, 'CSE', 88);

SELECT * FROM Students;

SELECT * FROM Students
WHERE Department = 'AIML';

SELECT Department, AVG(Marks) AS Average_Marks
FROM Students
GROUP BY Department
HAVING AVG(Marks) > 80;