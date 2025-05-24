--Example 3: View with JOIN
--Join students and departments tables to display student name with department name:

CREATE VIEW student_with_department AS
SELECT s.name AS student_name, d.department_name
FROM students s
JOIN departments d ON s.department_id = d.department_id;
