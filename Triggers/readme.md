# **What is a Trigger in SQL?**
- A Trigger is like an automatic reaction to an event that happens in a database.
- Think of it like this:
       - 🔔 “When something happens to a table (like inserting, deleting, or updating a row), the trigger automatically runs some code.”

---
## **Why do we use Triggers?**
- To keep a log or history of changes.

- To validate or check data before it’s added or changed.

- To enforce rules (e.g., don’t allow deletion if marks are above 90).

---
- Create a trigger that runs AFTER a student is deleted
CREATE TRIGGER trg_StudentDelete
ON students
AFTER DELETE
AS
BEGIN
    -- Copy deleted student's data into student_log table
    INSERT INTO student_log (student_id, name)
    SELECT student_id, name FROM deleted;
END;

## What’s happening here?
- AFTER DELETE means: this trigger runs after a student is deleted.

- deleted is a special table that temporarily holds the deleted row's data.

- So, the trigger copies the deleted student's data into another table called student_log.

- **Note**
- To use this, you must have a table called student_log with at least student_id and name columns.

CREATE TABLE student_log (
    student_id INT,
    name VARCHAR(100)
);




