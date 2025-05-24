# 🌟 **SQL Clauses**
- In SQL, clauses are like building blocks of a query. They help you control
- **what data you want**,
- **where to get it from**,
- **how to filter it**,
- **and how to organize or limit the results.**
---
## **1. SELECT**
- **What it does:** Picks the columns (fields) you want to see. 
         SELECT name, age FROM students;
- This means: "Show me the name and age of all students."
---
## **2. FROM**
- **What it does:** Tells SQL which table to pull data from.
        SELECT * FROM employees;
- This means: "Get everything from the 'employees' table."

---
## **3. WHERE**
- **What it does:** Filters the data (like a condition). 
      SELECT * FROM employees WHERE salary > 50000;
- This means: "Only show employees who earn more than 50,000."

---
## **4. ORDER BY**
- **What it does:** Sorts the result in ascending or descending order. 
    SELECT * FROM students ORDER BY marks DESC;
- This means: "List all students by their marks, highest first."

---
## **5. GROUP BY**
- **What it does:** Groups rows that have the same values in specified columns.
  SELECT department, COUNT(*) FROM employees GROUP BY department;
- This means: "Show each department and how many people are in it."
---
## **6. HAVING**
- **What it does:** Like WHERE, but works with GROUP BY results.
              SELECT department, COUNT(*) 
              FROM employees 
              GROUP BY department 
              HAVING COUNT(*) > 5;
- This means: "Show departments that have more than 5 employees."
---
## **7. TOP **
- **What it does:** Similar to LIMIT, but used in SQL Server.

     SELECT TOP 5 * FROM students;
- This means: "Show only the first 5 students."
  ---
## **8. IN**
- **What it does:** Checks if a value matches any value in a list.

   SELECT * FROM employees WHERE department_id IN (1, 2, 3);
- This means: "Show employees from departments 1, 2, or 3."
---
## **9. BETWEEN**
- **What it does:** Filters values within a range.

  SELECT * FROM products WHERE price BETWEEN 100 AND 500;
- This means: "Get products priced between 100 and 500."
---





