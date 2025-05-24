# **What is a Stored Procedure?**
- A Stored Procedure is a saved SQL code that you can call whenever needed. It can accept input parameters and perform operations like insert, update, delete, etc.
- A Stored Procedure is like a saved recipe of SQL code in your database.
- Instead of writing the same SQL code again and again, you can save it once and use it whenever you want by just calling its name.
- You can pass values (like a student ID) into it so it works for different data each time.
## **Why use Stored Procedures?**
- **Reusability** – You write once, use many times.

- **Faster** – Stored in the database, so it runs faster.

- **Safe** – You can control who uses it, instead of letting people write raw SQL.

- **Logic** – You can add conditions, loops, etc., just like in programming.

   ---
  -- This creates the stored procedure
CREATE PROCEDURE GetStudentDetails (@student_id INT)
AS
BEGIN
    SELECT * FROM students WHERE student_id = @student_id;
END;

---
## **What it does:**
- It creates a procedure called GetStudentDetails.

- It takes 1 input: @student_id (e.g., 1, 2, 3...).

- It finds and shows the details of the student with that ID from the students table.
---
## **How to run (call) it:**

EXEC GetStudentDetails 1;
This line will:

- Call the procedure.

- Give it the student ID = 1.

- And it will return the details of student with ID 1.




