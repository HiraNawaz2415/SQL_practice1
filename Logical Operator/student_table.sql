CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    department_id INT
);

-- Insert sample data into students table
INSERT INTO students (student_id, name, age, gender, department_id) VALUES
(1, 'Alice', 20, 'Female', 101),
(2, 'Bob', 22, 'Male', 102),
(3, 'Charlie', 19, 'Male', 101),
(4, 'Diana', 21, 'Female', 103),
(5, 'Ethan', 18, 'Male', 102);
