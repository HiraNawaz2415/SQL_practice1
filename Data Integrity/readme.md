## 🔐 **What is Data Integrity?**
Data Integrity means making sure the data in a database is:

- Correct

- Complete

- Consistent

- Reliable

It helps keep the data safe from mistakes like wrong entries, missing values, or broken relationships between tables

---
## **Why Is Data Integrity Important?**
- Maintains trust in the database.

- Prevents invalid or duplicate entries.

- Supports accurate reporting, analysis, and decision-making.

- Enforces rules about how data can be entered or modified.

---
# 📘 **Types of Data Integrity**
## **1. Entity Integrity**
- Every record (row) in a table must be unique.

- This is done using a Primary Key (like a unique ID).

- Prevents duplicate or missing records.

- **Example:** In a "Students" table, each student must have a different StudentID.

## **2. Referential Integrity**
- Keeps the relationship between tables correct.

- Uses Foreign Keys to connect rows in different tables.

- A foreign key must match a primary key in another table or be null.

- **Example:** If a student has a ClassID, that class must exist in the "Classes" table.

## **3. Domain Integrity**
- Makes sure the data entered is valid and within allowed values.

- Controlled using data types, rules, or constraints.

- Enforced using data types, constraints (CHECK, DEFAULT), or ENUMs.

- **Example:** A "Marks" column should only accept numbers between 0 and 100.

## **4. User-Defined Integrity**
- Special rules made by users based on business needs.

- **Example:** In a banking app, the balance should never go below 0.


