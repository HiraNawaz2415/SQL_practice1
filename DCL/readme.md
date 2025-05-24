# 🔐 **DCL – Data Control Language**
- DCL commands are used to manage who can access or control the data in the database.
- These commands help secure the database by giving or removing permissions from users.

---
## **1. GRANT** – Give Access to a User
- This command is used to allow a user to do specific actions like selecting, inserting, or updating data in a table.

**Example:**
GRANT SELECT, INSERT ON Students TO user_name;
- This gives the user permission to view (SELECT) and add (INSERT) data in the Students table.

---
## **2. REVOKE** – Take Back Access
This command is used to remove permissions that were previously given to a user.

 **Example:**
REVOKE INSERT ON Students FROM user_name;
- This takes back the permission to insert data into the Students table from that user.


