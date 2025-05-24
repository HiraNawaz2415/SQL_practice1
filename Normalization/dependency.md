# **What is Dependency in Database?**
In a relational database, a dependency describes how one piece of data relies on another. It helps us understand how attributes (columns) are related, especially when we are normalizing data to reduce redundancy and improve data integrity.

## **Why is Dependency Important?**
- Helps in normalization (breaking a table into smaller, related tables).

- Reduces data redundancy.

- Ensures consistency and integrity of data.

- Helps design a better, logical database structure.
---
# 📚 **Types of Dependencies in DBMS**

## **1. Functional Dependency (FD)**
- If the value of one column uniquely determines another column, we call it a functional dependency.
**Formula:**
If **A → B**, then B is functionally dependent on A.
**Example:**
- If a student's Roll Number is known, you can uniquely find their Name:
      - RollNo → StudentName
---
## **2. Partial Dependency**
- When a column is dependent on part of a composite key, not the whole key.

- This only exists in 2NF (Second Normal Form) discussions.

**Example:**
- Suppose **StudentID + CourseID** is a composite key. If StudentName depends only on StudentID, that’s a partial dependency.
---
## **3. Transitive Dependency**
- When a column depends on another column that is not a primary key, but indirectly depends on it.
- Exists when:
**A->B** and **B → C**, so **A → C** (indirectly).
**Example:**
- If StudentID → DeptID and DeptID → DeptName, then:
           - StudentID → DeptName  (transitive dependency)
- This is removed in 3NF.
---
## **4. Multivalued Dependency**
- When one attribute in a table has multiple independent values for another attribute.
- Exists when:
**A →→ B** (read as "A multi-determines B")
**Example:**
- A student can have multiple phone numbers and multiple emails, and they are independent of each other.
---
## **5. Join Dependency**
- A table has a join dependency when it can be reconstructed from multiple tables through natural joins, without any loss of information.
- Related to 5NF (Fifth Normal Form)
**Example:**
- Splitting a big table into smaller ones, and being able to join them back to get the original table.



