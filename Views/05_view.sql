--Example 5: View with Aliases and ORDER BY
--View with formatted data and sorted results:

CREATE VIEW sorted_students_view AS
SELECT student_id AS ID, name AS FullName, age
FROM students
ORDER BY age DESC;
