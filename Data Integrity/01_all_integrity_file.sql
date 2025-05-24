-- Entity Integrity: Primary key must be unique and not empty
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100)
);

-- Referential Integrity: ClassID must exist in Classes table
CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName VARCHAR(50)
);

CREATE TABLE Enrollments (
    StudentID INT,
    ClassID INT,
    FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)
);

-- Domain Integrity: Age must be between 5 and 18
CREATE TABLE Kids (
    KidID INT PRIMARY KEY,
    Age INT CHECK (Age BETWEEN 5 AND 18)
);
