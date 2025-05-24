--Example 4: Aggregated View
--View showing total students per department:
CREATE VIEW total_students_per_department AS
SELECT department_id, COUNT(*) AS total_students
FROM students
GROUP BY department_id;
