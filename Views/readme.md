# **Views** — SQL Views
---
## **What is a View?**
A View is like a virtual table based on the result of a SQL query. It doesn’t store data itself, but shows data from one or more tables.

## **Why Use Views?**
- To simplify complex queries

- To provide a layer of security (hide specific columns or rows)

- To present data in a specific format

  ---
**Example:**

- Create a view for students in Computer Science department
CREATE VIEW CS_Students AS
SELECT name, age
FROM students
WHERE department_id = 101;

-- Use the view like a table
SELECT * FROM CS_Students;
