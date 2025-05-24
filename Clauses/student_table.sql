-- Create the departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) UNIQUE NOT NULL
);

-- Insert sample data into departments table
INSERT INTO departments (dept_id, dept_name) VALUES
(1, 'Computer Science'),
(2, 'Software Engineering'),
(3, 'Information Tech'),
(4, 'Data Science');

-- Create the students table with a foreign key reference to departments
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT CHECK (age > 0),
    email VARCHAR(100) UNIQUE,
    dept_id INT,
    admission_date DATE DEFAULT GETDATE(),
    CONSTRAINT fk_department FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Insert sample student data
INSERT INTO students (student_id, name, age, email, dept_id, admission_date) VALUES
(1, 'Ali Khan', 20, 'ali.khan@example.com', 1, '2022-08-01'),
(2, 'Fatima Noor', 22, 'fatima.noor@example.com', 2, '2021-09-15'),
(3, 'Ahmed Raza', 19, 'ahmed.raza@example.com', 3, '2023-01-10'),
(4, 'Sara Malik', 21, 'sara.malik@example.com', 1, '2020-07-21');

-- Add an index on dept_id in students for faster joins
CREATE INDEX idx_dept_id ON students(dept_id);

-- Key Features in This Script:
--departments table (with unique dept_id and dept_name)

--students table with:

--Foreign Key (fk_department) to departments(dept_id)

--Constraints: PRIMARY KEY, NOT NULL, UNIQUE, CHECK, and DEFAULT

--Index on dept_id for fast lookup
