# **What is Normalization in Databases?**
- Normalization is the process of organizing data in a database so that it is:
            - Well structuredFree of duplicate data
            - Easy to maintain and update
            - Less chances of errors or confusion
---
## **Why Do We Normalize a Database?**
For example if storing student records in a single table. If you repeat the same department name for every student, it wastes space and makes it hard to update.
- Normalization helps solve this by splitting data into related tables.
-  This improves data consistency and storage efficiency.
---
# **Types (Forms) of Normalization:**
Normalization has several levels called normal forms. Each form builds on the previous one.
---
# **1NF (First Normal Form)**
**Rule:**
- Each column should contain atomic (indivisible) values.
- No repeating groups or arrays.
**Example:**
- Wrong ➡️ Courses = "Math, Physics"
- Right ➡️ Create separate rows for each course
---
## **2NF (Second Normal Form)**
**Rule:**
- It should be in 1NF
- And all non-key columns must depend entirely on the primary key (no partial dependency).
---
## **3NF (Third Normal Form)**
**Rule:**
- It should be in 2NF
---
## **Higher Normal Forms((
- There are also BCNF, 4NF, 5NF for very complex databases, but usually 3NF is enough for most practical applications.
---

And no non-key column should depend on another non-key column (no transitive dependency).
