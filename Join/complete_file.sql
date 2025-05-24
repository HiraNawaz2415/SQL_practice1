
-- Drop tables if they exist
DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Departments;

-- Create Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

-- Create Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Insert data into Departments
INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'Computer Science'),
(2, 'Mathematics'),
(3, 'Physics');

-- Insert data into Students
INSERT INTO Students (StudentID, Name, DepartmentID) VALUES
(101, 'Alice', 1),
(102, 'Bob', 2),
(103, 'Charlie', NULL),
(104, 'David', 1),
(105, 'Eve', 4); -- No matching department

-- INNER JOIN: Students with a valid department
SELECT Students.Name, Departments.DepartmentName
FROM Students
INNER JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;

-- LEFT JOIN: All students and their departments (if any)
SELECT Students.Name, Departments.DepartmentName
FROM Students
LEFT JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;

-- RIGHT JOIN: All departments and the students in them (if any)
SELECT Students.Name, Departments.DepartmentName
FROM Students
RIGHT JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;

-- FULL JOIN: All students and all departments, matched where possible
-- Note: FULL JOIN might not be supported in all SQL engines
SELECT Students.Name, Departments.DepartmentName
FROM Students
FULL JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;

-- CROSS JOIN: Cartesian product
SELECT Students.Name, Departments.DepartmentName
FROM Students
CROSS JOIN Departments;
