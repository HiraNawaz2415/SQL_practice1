-- DML Commands 
-- Author: Hira Nawaz (2415)
-- Description: Basic Data Manipulation examples using SQL

-- ============================================
-- STEP 1: Create a sample table for practice
-- ============================================

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Grade VARCHAR(2)
);

-- ============================================
-- STEP 2: INSERT – Add new records into the table
-- ============================================

-- Add a student named Ali
INSERT INTO Students (StudentID, Name, Age, Grade)
VALUES (1, 'Ali', 20, 'A');

-- Add a student named Sana
INSERT INTO Students (StudentID, Name, Age, Grade)
VALUES (2, 'Sana', 22, 'B');

-- ============================================
-- STEP 3: SELECT – View data from the table
-- ============================================

-- View all students
SELECT * FROM Students;

-- View only names and grades
SELECT Name, Grade FROM Students;

-- ============================================
-- STEP 4: UPDATE – Modify existing data
-- ============================================

-- Change Sana's grade to A+
UPDATE Students
SET Grade = 'A+'
WHERE StudentID = 2;

-- ============================================
-- STEP 5: DELETE – Remove data from the table
-- ============================================

-- Delete the student with ID = 1
DELETE FROM Students
WHERE StudentID = 1;

-- ============================================
-- STEP 6: Final view of remaining data
-- ============================================

SELECT * FROM Students;
