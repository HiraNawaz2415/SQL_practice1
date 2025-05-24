# 🤝 **What Are Joins in SQL?**
- In real life, when we want to combine information from two lists — for example, a list of students and a list of their departments — we connect them using something in common like a DepartmentID.
- Joins in SQL do exactly that! They allow us to combine rows from two or more tables based on a related column between them (usually a primary key and foreign key).
---
## **Why Use Joins?**
- To pull meaningful data from multiple tables.

- To make your database organized by splitting data into logical tables — and then joining them when needed.
---
# **Types of JOIN**
---
## **1. INNER JOIN**
- Returns only the rows that have matching values in both tables.
- Formula-like definition:
        - **A ⨝ B = { (a, b) | a ∈ A, b ∈ B, a.key = b.key }**
## **2. LEFT JOIN (LEFT OUTER JOIN)**
- Returns all rows from the left table, and the matched rows from the right table. Unmatched rows from the right side return NULL.
- Formula-like definition:
        - **A ⟕ B = A ⨝ B ∪ { (a, null) | a ∈ A and no match in B }** 
## **3. RIGHT JOIN (RIGHT OUTER JOIN)**
- Returns all rows from the right table, and the matched rows from the left table. Unmatched rows from the left side return NULL.
- Formula-like definition:
        - **A ⟖ B = A ⨝ B ∪ { (null, b) | b ∈ B and no match in A }**
## **4. FULL JOIN (FULL OUTER JOIN)**
- Returns all rows when there is a match in either left or right table. Unmatched rows are filled with NULLs.
- Formula-like definition:
       - **A ⟗ B = A ⨝ B ∪ { (a, null) | a ∈ A and no match in B } ∪ { (null, b) | b ∈ B and no match in A }**
## **5. CROSS JOIN**
- Returns the Cartesian product of the two tables — every row from the first table combined with every row from the second.
- Formula-like definition:
      - **A × B = { (a, b) | a ∈ A, b ∈ B }**
## **6.Theta Join**
- **Definition:**
- A Theta Join is a type of join that links tables based on a condition that can use any comparison operator like =, >, <, >=, <=, <> (not equal), etc.

- In other words:
You can join tables using any condition, not just equality.

**Example:**
- Suppose you want to join **students** and **scores** tables where the student’s score is greater than 70.

## **Equi Join**
- **Definition:**
- An Equi Join is a special case of Theta Join where the join condition uses only the equality operator (=).

- In other words:
 - It joins tables where columns from both tables are exactly equal.

**Example:**
- Joining students and enrollment tables on the student ID.
---

---
---
