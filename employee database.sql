CREATE DATABASE EmployeeDB;
USE EmployeeDB;

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(30),
    Salary INT
);

INSERT INTO Employee VALUES
(1, 'Ravi', 'IT', 45000),
(2, 'Anil', 'HR', 35000),
(3, 'Priya', 'IT', 55000),
(4, 'Sneha', 'Finance', 50000),
(5, 'Kiran', 'HR', 40000),
(6, 'Meena', 'IT', 60000);

SELECT * FROM Employee;

SELECT SUM(Salary) AS Total_Salary,
       AVG(Salary) AS Average_Salary,
       MIN(Salary) AS Minimum_Salary,
       MAX(Salary) AS Maximum_Salary,
       COUNT(*) AS Employee_Count
FROM Employee;

SELECT Department, SUM(Salary) AS Total_Salary
FROM Employee
GROUP BY Department
HAVING SUM(Salary) > 70000;