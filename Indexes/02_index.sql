
-- ==========================
-- Index Examples_2 in SQL
-- ==========================

-- 1. Create a Simple Index on 'Name' column
CREATE INDEX idx_employee_name
ON Employees(Name);

-- 2. Create a Composite Index on 'Name' and 'DepartmentID'
CREATE INDEX idx_name_dept
ON Employees(Name, DepartmentID);

-- 3. Create a Unique Index on 'Email' to prevent duplicates
CREATE UNIQUE INDEX idx_email_unique
ON Employees(Email);

-- 4. Drop an Index (MySQL syntax)
DROP INDEX idx_employee_name ON Employees;

-- Note for SQL Server:
DROP INDEX Employees.idx_employee_name;

-- Additional Notes:
-- Indexes improve SELECT query performance
-- Too many indexes can slow down INSERT, UPDATE, DELETE
-- Indexes consume extra storage space
