CREATE DATABASE EmployeeDB;
USE EmployeeDB;

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(30),
    Salary DECIMAL(10,2),
    JobRole VARCHAR(30)
);

INSERT INTO Employee VALUES
(1, 'Ravi', 'CSE', 30000, 'Developer'),
(2, 'Priya', 'ECE', 35000, 'Engineer'),
(3, 'Anu', 'CSE', 40000, 'Developer'),
(4, 'Kiran', 'IT', 45000, 'Analyst'),
(5, 'Sita', 'ECE', 38000, 'Engineer'),
(6, 'Rahul', 'IT', 50000, 'Manager');

SELECT * FROM Employee;