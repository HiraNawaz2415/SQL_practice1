--Example 2: View with WHERE Clause
--View for students above age 20:

CREATE VIEW students_above_20 AS
SELECT student_id, name, age
FROM students
WHERE age > 20;
