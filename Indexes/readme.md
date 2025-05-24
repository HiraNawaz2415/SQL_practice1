# 📘 **What is an Index in SQL?**
- An Index is a database object that helps find data faster in a table — just like the index of a book helps you locate topics quickly without reading every page.

- **for example** searching for a student’s name in a huge list. Without an index, SQL has to check every row one by one. With an index, it can jump directly to the matching data.
---
## **Why use indexes?**
- They speed up searching in large tables.

- They help the database find rows without scanning the whole table.

- But creating too many indexes can slow down data changes like insert or update, because indexes also need to be updated.
---
## **How do indexes work?**
- When you create an index on a column, the database builds a data structure (like a sorted list or tree) based on that column.

- When you run a query filtering by that column, the database uses the index to jump straight to the right rows.
---
# **Types of Indexes in SQL**
---
## **1.Single-column index**
- Created on one column.
- Fast when querying based on that column only.
## **2.Composite index**	
- Created on two or more columns together.
- Useful when queries use multiple columns.
## **3.Unique index**
- Doesn't allow duplicate values in the indexed column (enforces uniqueness).
## **4.Full-text index**
- Used for searching long text like articles or comments (e.g., with MATCH and AGAINST).
## **5.Clustered index**
- Sorts the actual data rows in the table (only one per table, e.g., primary key).
## **6.Non-clustered index**
- Stores a separate list pointing to the data rows (can be many per table).

---
## **When to use indexes?**
- Use indexes on columns that you search, filter, join, or sort often.

- Avoid creating indexes on columns that are updated very frequently or have many duplicate values.
