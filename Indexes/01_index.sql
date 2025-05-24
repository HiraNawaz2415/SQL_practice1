
-- ==========================
-- Index Examples for Student Table
-- ==========================

-- Assuming a 'Student' table exists with columns like:
-- StudentID, Name, Email, Department, Age

-- 1. Create a simple index on 'Name'
CREATE INDEX idx_student_name
ON Student(Name);

-- 2. Create a composite index on 'Name' and 'Department'
CREATE INDEX idx_name_department
ON Student(Name, Department);

-- 3. Create a unique index on 'Email' to prevent duplicate emails
CREATE UNIQUE INDEX idx_unique_email
ON Student(Email);

-- 4. Drop an index (MySQL syntax)
DROP INDEX idx_student_name ON Student;

-- Note for SQL Server:
DROP INDEX Student.idx_student_name;

--Indexes help speed up search queries like:
 SELECT * FROM Student WHERE Name = 'Ali';
 SELECT * FROM Student WHERE Name = 'Ali' AND Department = 'CS';
