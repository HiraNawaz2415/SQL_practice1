# 📋 **Constraints** — Table Constraints 
- Constraints are rules that we set on database tables to maintain the accuracy and integrity of the data.
- They make sure the data entered into the table follows certain conditions so the database stays clean and reliable.
---
# **Types of Constraints**
---
## **1. PRIMARY KEY**
- A Primary Key uniquely identifies each row (record) in a table.

- It cannot be empty (NOT NULL) and must be unique.

- Every table should have one primary key to identify records clearly.

**Example:**
- StudentID in a Students table — no two students have the same ID.
---
## **2. FOREIGN KEY**
- A Foreign Key links one table to another.

- It ensures the value in one table matches a value in another table’s primary key.

- Helps maintain relationship between tables and keeps data consistent.

**Example:**
- Linking StudentID in Enrollments table to Students table
---
## **3. UNIQUE**
- The Unique constraint makes sure all values in a column are different.

- It allows no duplicates but can have NULL values (depending on the database).

**Example:**
- Emails in a Users table must be unique so no two users have the same email.
---
## **4. NOT NULL**
- The Not Null constraint makes sure a column cannot be empty.

- Data must be provided when inserting or updating rows.

**Example:**
- A user’s Name cannot be NULL because every user should have a name.
---
## **5. CHECK**
- The Check constraint sets a rule that data in a column must satisfy.

- If the data doesn’t meet the rule, the database rejects it.

**Example:**
- Age must be greater than or equal to 18.
---

## **6. DEFAULT**
- The Default constraint gives a column a default value if no value is provided.

- Useful to avoid empty fields and set common default info.

**Example:**
- A Status column that defaults to ‘Active’ if no status is given.

---


