--Create a view that shows only student names and departments.

CREATE VIEW student_names_departments AS
SELECT name, department
FROM students;

--Use the view:

SELECT * FROM student_names_departments;
