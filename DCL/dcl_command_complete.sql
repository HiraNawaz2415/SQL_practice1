-- DCL Commands
-- Author: Hira Nawaz (2415)
-- Description: Data Control Language examples for permissions

-- ================================================
-- STEP 1: Create a sample table (if not exists)
-- ================================================

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Grade VARCHAR(2)
);

-- ================================================
-- STEP 2: Create a sample user (for demonstration)
-- NOTE: You may need administrative rights to do this
-- ================================================

-- Example for SQL Server:
CREATE LOGIN sample_user WITH PASSWORD = 'StrongPass123!';
CREATE USER sample_user FOR LOGIN sample_user;

-- ================================================
-- STEP 3: GRANT – Give permissions to a user
-- ================================================

-- Allow sample_user to SELECT and INSERT data into Students table
GRANT SELECT, INSERT ON Students TO sample_user;

-- ================================================
-- STEP 4: REVOKE – Take back permissions
-- ================================================

-- Remove the INSERT permission from sample_user
REVOKE INSERT ON Students FROM sample_user;

-- ================================================
-- OPTIONAL: Drop the user after testing
-- ================================================

-- DROP USER sample_user;
-- DROP LOGIN sample_user;
