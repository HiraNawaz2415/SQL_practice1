-- Starts with 'A'
SELECT * FROM students
WHERE name LIKE 'A%';

-- Ends with 'n'
SELECT * FROM students
WHERE name LIKE '%n';

-- Contains 'ar'
SELECT * FROM students
WHERE name LIKE '%ar%';

-- Name starts with 'J' and is exactly 5 characters long
SELECT * FROM students
WHERE name LIKE 'J____';
