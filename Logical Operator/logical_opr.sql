-- AND operator: Select students older than 18 and gender is Male
SELECT * FROM students
WHERE age > 18 AND gender = 'Male';

-- OR operator: Select students younger than 18 or older than 60
SELECT * FROM students
WHERE age < 18 OR age > 60;

-- NOT operator: Select students who are not Female
SELECT * FROM students
WHERE NOT gender = 'Female';
