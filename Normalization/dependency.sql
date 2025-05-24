-- 2415--------------
-- 1. Functional Dependency
-- RollNo uniquely determines StudentName
CREATE TABLE Students_FD (
    RollNo INT PRIMARY KEY,
    StudentName VARCHAR(50)
);

-- Insert example data
INSERT INTO Students_FD VALUES (1, 'Hira');
INSERT INTO Students_FD VALUES (2, 'Amina');


-- 2. Partial Dependency
-- Composite key (StudentID, CourseID), but StudentName depends only on StudentID
CREATE TABLE StudentCourses_PD (
    StudentID INT,
    CourseID INT,
    StudentName VARCHAR(50),
    PRIMARY KEY (StudentID, CourseID)
);

-- This violates 2NF because StudentName depends only on StudentID (part of composite key)


-- 3. Transitive Dependency
-- StudentID determines DeptID, DeptID determines DeptName
CREATE TABLE Students_TD (
    StudentID INT PRIMARY KEY,
    DeptID INT
);

CREATE TABLE Departments_TD (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

-- DeptName is transitively dependent on StudentID via DeptID


-- 4. Multivalued Dependency
-- Student can have multiple phone numbers and multiple emails independently
CREATE TABLE StudentPhones_MVD (
    StudentID INT,
    PhoneNumber VARCHAR(15),
    PRIMARY KEY (StudentID, PhoneNumber)
);

CREATE TABLE StudentEmails_MVD (
    StudentID INT,
    Email VARCHAR(50),
    PRIMARY KEY (StudentID, Email)
);

-- 5. Join Dependency
-- Splitting a table into smaller ones that can be joined back without loss
CREATE TABLE StudentInfo_JD (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50)
);

CREATE TABLE StudentCourses_JD (
    StudentID INT,
    CourseID INT,
    PRIMARY KEY (StudentID, CourseID)
);

-- Joining StudentInfo_JD and StudentCourses_JD reconstructs original info
