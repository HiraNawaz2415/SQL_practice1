-- Create the employees table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);

-- Insert sample data into employees table
INSERT INTO employees (id, name, department, salary, hire_date) VALUES
(1, 'Alice Johnson', 'HR', 55000.00, '2020-01-15'),
(2, 'Bob Smith', 'IT', 70000.00, '2019-03-22'),
(3, 'Charlie Brown', 'Finance', 60000.00, '2018-07-10'),
(4, 'Diana Prince', 'IT', 75000.00, '2021-11-01'),
(5, 'Eva Adams', 'HR', 58000.00, '2022-06-17'),
(6, 'Frank Castle', 'Finance', 65000.00, '2020-09-05');
