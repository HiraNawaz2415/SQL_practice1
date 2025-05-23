# **📘 1. DDL (Data Definition Language)**
- DDL stands for Data Definition Language. These SQL commands are used to define, modify, and delete the structure of database objects like tables, schemas, and indexes.

- Unlike DML (which deals with the data), DDL changes the structure of the database itself.
---
## **1.1 CREATE**
The CREATE command is used to create new database objects such as:

- Tables

- Views

- Indexes

- Databases

**Syntax:**

CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    ...
);

**Example:**

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Grade CHAR(1)
);
This creates a table named **Students** with four columns.
---
## **1.2 ALTER**
The ALTER command is used to modify the structure of an existing table, such as:

- Adding a new column

- Modifying a column’s data type

- Dropping (removing) a column

**Syntax:**

ALTER TABLE table_name
ADD column_name datatype;

**Add a column**

ALTER TABLE Students
ADD Email VARCHAR(100);

**Modify a column**

ALTER TABLE Students
ALTER COLUMN Age SMALLINT;

**Drop a column**

ALTER TABLE Students
DROP COLUMN Grade;

---
## **1.3 DROP**
The DROP command permanently deletes a database object (like a table or database).
⚠️ All the data and structure are lost — this cannot be undone!

**Syntax:**

DROP TABLE table_name;

**Example:**

DROP TABLE Students;

## **1.4 TRUNCATE**
- The TRUNCATE command is used to quickly remove all rows from a table.
- However, the table structure remains intact.
- It is faster than DELETE and cannot be rolled back in some databases.

**Syntax:**

TRUNCATE TABLE table_name;

**Example:**

TRUNCATE TABLE Students;
- This removes all rows from the Students table, but keeps the table itself.
