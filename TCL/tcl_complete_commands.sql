-- TCL (Transaction Control Language) 
-- Author: Hira Nawaz (2415)
-- Description: Demonstrates COMMIT, ROLLBACK, and SAVEPOINT

-- ===============================================
-- STEP 1: Create a sample table (if not exists)
-- ===============================================
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);

-- ===============================================
-- STEP 2: Begin transaction with DML operations
-- ===============================================

-- Start a new transaction (optional keyword)
BEGIN TRANSACTION;

-- Insert a new student
INSERT INTO Students (StudentID, Name, Age) VALUES (1, 'Ali', 20);

-- Save this point in case we want to roll back later
SAVEPOINT Save_After_Ali;

-- Insert another student
INSERT INTO Students (StudentID, Name, Age) VALUES (2, 'Sara', 21);

-- Oops! Suppose we realize Sara’s data is incorrect.
-- We can roll back to our savepoint to undo only Sara's insert
ROLLBACK TO Save_After_Ali;

-- Insert correct data now
INSERT INTO Students (StudentID, Name, Age) VALUES (2, 'Sara Khan', 21);

-- Commit to save everything permanently
COMMIT;

-- ===============================================
-- STEP 3: Test ROLLBACK separately
-- ===============================================

-- Start a new transaction
BEGIN TRANSACTION;

-- Insert a third student
INSERT INTO Students (StudentID, Name, Age) VALUES (3, 'Zain', 22);

-- Now we decide to cancel this transaction
ROLLBACK;

-- Zain's data will not be saved in the table
