# **🔑 What are Keys in a Database?**
In a database, keys are special columns (fields) in a table that help us:
- Identify data uniquely

- Connect tables to each other

- Keep data organized and correct

---
## **Why Are Keys Important?**
- Prevent duplicate data

- Keep data accurate

- Link tables together

- Help in searching and sorting data

---
## **Types of Keys :**

## **1. Primary Key**
- A column (or set of columns) that uniquely identifies each row in a table.

- It cannot be empty (NULL) and cannot have duplicate values.

**Example:**
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);
Here, **StudentID** is a primary key—each student must have a unique ID.

---
## **2. Foreign Key**
- A column that links one table to another.

- It refers to the primary key in another table.

- Used to create relationships between tables.

**Example:**
CREATE TABLE Marks (
    MarkID INT PRIMARY KEY,
    StudentID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);
Here, **StudentID** in the **Marks** table is a foreign key that connects to the Students table.

---
## **3. Candidate Key**
- Any column that can be a primary key (it is unique and not null).

- A table can have many candidate keys, but only one is chosen as the primary key.

---
## **4. Composite Key**
- A combination of two or more columns that together act as a primary key.

- Used when no single column can uniquely identify a row.

- **Example:** PRIMARY KEY (StudentID, Subject)
---

## **What is a Surrogate Key?**
- A Surrogate Key is an artificial or automatically generated key used to uniquely identify each row in a table.

- It has no real-world meaning—it's just a unique number (usually an ID) created by the database.

**Why Use a Surrogate Key?**
- When there is no natural column in the table that can be used as a primary key.

- When using a natural key would be too large, too complex, or could change over time.

**Example:**
CREATE TABLE Employees (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,  -- Surrogate Key
    Name VARCHAR(50),
    Department VARCHAR(50)
);
Here, **EmployeeID **is a surrogate key. It’s just a number (1, 2, 3...) assigned to each employee automatically.
It doesn't mean anything outside the database.it's only used to identify records.


