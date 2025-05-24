CREATE TABLE Students (
    StudentID INT PRIMARY KEY,          -- Unique ID for each student
    Name VARCHAR(50) NOT NULL,          -- Name cannot be empty
    Email VARCHAR(100) UNIQUE,          -- Email must be unique
    Age INT CHECK (Age >= 18),          -- Age must be 18 or older
    Status VARCHAR(10) DEFAULT 'Active' -- Default status is 'Active'
);
