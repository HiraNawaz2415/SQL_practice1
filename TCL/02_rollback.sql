INSERT INTO Students (StudentID, Name, Age) VALUES (2, 'Sara', 21);
ROLLBACK;
-- This will undo the INSERT, so Sara won’t be added to the table.

