# **Logical Operators in SQL**
- Logical operators help combine multiple conditions in a WHERE clause. They return TRUE, FALSE, or UNKNOWN.

## **Common Logical Operators:**
- **AND**	Returns true if both conditions are true
- 	age > 18 AND gender = 'Male'
- **OR**	Returns true if at least one condition is true
age < 18 OR age > 60
- **NOT**	Reverses the result of the condition
- NOT (gender = 'Female')

---
# **LIKE Operator in SQL**
- The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
- % is like “...anything after/before”.

_ is like a placeholder for one letter.

-- Names starting with 'A'
SELECT * FROM students WHERE name LIKE 'A%';

-- Names ending with 'n'
SELECT * FROM students WHERE name LIKE '%n';

-- Names that contain 'ar'
SELECT * FROM students WHERE name LIKE '%ar%';

-- Names with 5 letters starting with 'J'
SELECT * FROM students WHERE name LIKE 'J____';
