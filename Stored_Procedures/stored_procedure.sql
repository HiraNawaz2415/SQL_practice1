
-- ============================
-- SQL Stored Procedures Example File
-- ============================

-- Create students table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    grade VARCHAR(10)
);

-- Insert sample data into students table
INSERT INTO students VALUES (1, 'Ali', 20, 'A');
INSERT INTO students VALUES (2, 'Sara', 21, 'B');
INSERT INTO students VALUES (3, 'Ahmed', 19, 'A');

-- ==============================================
-- Stored Procedure: Get details of a student by ID
-- ==============================================
CREATE PROCEDURE GetStudentDetails (@student_id INT)
AS
BEGIN
    SELECT * FROM students WHERE student_id = @student_id;
END;

-- ==============================================
-- Stored Procedure: Add a new student
-- ==============================================
CREATE PROCEDURE AddStudent (
    @student_id INT,
    @name VARCHAR(100),
    @age INT,
    @grade VARCHAR(10)
)
AS
BEGIN
    INSERT INTO students VALUES (@student_id, @name, @age, @grade);
END;

-- ==============================================
-- Stored Procedure: Update a student's grade
-- ==============================================
CREATE PROCEDURE UpdateGrade (
    @student_id INT,
    @grade VARCHAR(10)
)
AS
BEGIN
    UPDATE students SET grade = @grade WHERE student_id = @student_id;
END;

-- ==============================================
-- How to run these procedures
-- ==============================================
-- EXEC GetStudentDetails 1;
-- EXEC AddStudent 4, 'Fatima', 22, 'B';
-- EXEC UpdateGrade 2, 'A+';
