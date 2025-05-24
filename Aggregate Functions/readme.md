# 📊 **Aggregate Functions in SQ**
- Aggregate functions are built-in SQL functions used to perform calculations on multiple rows of a table and return a single result.
-  These are commonly used with **GROUP BY** and **HAVING clauses**.
---
## **1.COUNT()** → How many items are there?

## **SUM()** → What’s the total of all these numbers?

## **AVG()** → What’s the average (mean) value?

## **MAX()** → What’s the largest number?

## **MIN()** → What’s the smallest number?

---
# **Common Aggregate Functions**
## **COUNT()**
- Counts the number of rows (non-NULL values)
- SELECT COUNT(*) FROM students;
## **SUM()**	A
- Adds up numeric values
- SELECT SUM(salary) FROM employees;
## **AVG()**	
- Calculates the average of numeric values
- SELECT AVG(age) FROM students;
## **MAX()**
- Returns the highest value
- SELECT MAX(marks) FROM students;
## **MIN()**
- Returns the lowest value
- SELECT MIN(marks) FROM students;
