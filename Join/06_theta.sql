---Here, the condition scores.score > 70 is a theta condition.
SELECT students.name, scores.score
FROM students
JOIN scores ON students.student_id = scores.student_id
WHERE scores.score > 70;
