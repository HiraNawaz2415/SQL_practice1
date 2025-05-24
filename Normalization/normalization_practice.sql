--- Sample SQL demonstrating normalization steps: from unnormalized to 1NF, 2NF, and 3NF
-- Unnormalized Table: Contains repeating groups (courses)
CREATE TABLE Student_Unnormalized (
    StudentID INT,
    Name VARCHAR(50),
    Courses VARCHAR(100) -- Example: 'Math,Physics'
);

-- First Normal Form (1NF): Eliminate repeating groups
CREATE TABLE Student_1NF (
    StudentID INT,
    Name VARCHAR(50),
    Course VARCHAR(50)
);
-- Now each course is stored in a separate row

-- Second Normal Form (2NF): Remove partial dependency
-- Split into Students and Courses if student info is repeating for each course
CREATE TABLE Students_2NF (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50)
);

CREATE TABLE Courses_2NF (
    StudentID INT,
    Course VARCHAR(50),
    FOREIGN KEY (StudentID) REFERENCES Students_2NF(StudentID)
);

-- Third Normal Form (3NF): Remove transitive dependency
-- If Course also has a department that doesn't depend on student, split again

CREATE TABLE Courses_3NF (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    DeptID INT
);

CREATE TABLE Departments_3NF (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50),
    DeptHead VARCHAR(50)
);

CREATE TABLE StudentCourses_3NF (
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Students_2NF(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses_3NF(CourseID)
);


