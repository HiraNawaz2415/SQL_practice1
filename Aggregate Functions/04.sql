-- Total number of students in each department
SELECT dept_id, COUNT(*) AS students_per_department
FROM students
GROUP BY dept_id;
