# 🔁 **TCL – Transaction Control Language**
- TCL commands are used to manage a group of DML operations (like INSERT, UPDATE, DELETE) as a single unit called a transaction.
-  This is helpful when you want to make sure that your changes only get saved if everything goes well — and if something goes wrong, you can undo the changes.
  ---
## **1. COMMIT**– Save Changes Permanently
- When you're sure that all your changes (like inserting or updating rows) are correct, you use COMMIT to save them permanently in the database.

**Example:**
INSERT INTO Students (StudentID, Name, Age) VALUES (1, 'Ali', 20);
COMMIT;
- After COMMIT, the inserted data is saved and cannot be undone.

 ## **2. ROLLBACK – Undo Changes**
- If you make a mistake and want to cancel all the recent changes, you can use ROLLBACK. This will undo everything done after the last COMMIT.

**Example:**
INSERT INTO Students (StudentID, Name, Age) VALUES (2, 'Sara', 21);
ROLLBACK;
- This will undo the INSERT, so Sara won’t be added to the table.

## **3. SAVEPOINT**– Set a Temporary Save Spot
- SAVEPOINT lets you set a checkpoint during a transaction. If something goes wrong, you can roll back only to that point instead of undoing everything.

**Example:**
BEGIN TRANSACTION;

INSERT INTO Students (StudentID, Name, Age) VALUES (3, 'Zain', 23);
SAVEPOINT Save1;

INSERT INTO Students (StudentID, Name, Age) VALUES (4, 'Noor', 24);

ROLLBACK TO Save1;

COMMIT;
- Only Zain will be saved, because we rolled back to Save1, undoing Noor’s insert.



