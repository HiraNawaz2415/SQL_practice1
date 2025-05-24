---Here, the join condition is students.student_id = enrollment.student_id which is equality — so it’s an equi join.
SELECT students.name, enrollment.course_id
FROM students
JOIN enrollment ON students.student_id = enrollment.student_id;
