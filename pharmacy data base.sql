-- Create Database
CREATE DATABASE Pharmacy;
USE Pharmacy;

-- Medicine Table
CREATE TABLE Medicine (
    MedicineID INT PRIMARY KEY,
    MedicineName VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT
);

-- Customer Table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Phone VARCHAR(15)
);

-- Employee Table
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Designation VARCHAR(30)
);

-- Sales Table
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    CustomerID INT,
    MedicineID INT,
    EmployeeID INT,
    Quantity INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (MedicineID) REFERENCES Medicine(MedicineID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

-- Insert Data

INSERT INTO Medicine VALUES
(101,'Paracetamol',25.00,100),
(102,'Dolo 650',35.00,80);

INSERT INTO Customer VALUES
(1,'Rahul','9876543210'),
(2,'Priya','9123456789');

INSERT INTO Employee VALUES
(1,'Ramesh','Pharmacist'),
(2,'Suresh','Manager');

INSERT INTO Sales VALUES
(1,1,101,1,2),
(2,2,102,2,1);

-- Display Tables

SELECT * FROM Medicine;
SELECT * FROM Customer;
SELECT * FROM Employee;
SELECT * FROM Sales;