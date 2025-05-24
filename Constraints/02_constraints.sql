-- Constraints 
--Table: Employees

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,           -- PRIMARY KEY: unique, not null
    DepartmentID INT,                     -- FOREIGN KEY will be added later
    Email VARCHAR(100) UNIQUE,            -- UNIQUE: no duplicate emails
    Name VARCHAR(50) NOT NULL,            -- NOT NULL: name is required
    Age INT CHECK (Age >= 18),            -- CHECK: age must be 18 or older
    Status VARCHAR(10) DEFAULT 'Active'   -- DEFAULT: default value is 'Active'
);

-- Adding FOREIGN KEY constraint to link DepartmentID with Departments table
ALTER TABLE Employees
ADD CONSTRAINT FK_Department
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);
