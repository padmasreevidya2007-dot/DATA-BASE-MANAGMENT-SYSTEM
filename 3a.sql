CREATE TABLE IF NOT EXISTS Department (
 Dept_ID INT PRIMARY KEY,
 Dept_Name VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS Student (
 Student_ID INT PRIMARY KEY,
 Student_Name VARCHAR(50),
 Dept_ID INT,
 FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);
INSERT INTO Department VALUES
(1, 'CSE'),
(2, 'AI&DS'),
(3, 'ECE');
INSERT INTO Student VALUES
(101, 'shri', 1),
(102, '', 2),
(103, 'Lokesh', 1),
(104, 'Kumari', 3),
(105, 'Prasad', 2);
SELECT s.Student_ID, s.Student_Name, d.Dept_Name
FROM Student s
JOIN Department d
ON s.Dept_ID = d.Dept_ID
WHERE d.Dept_Name = 'CSE';