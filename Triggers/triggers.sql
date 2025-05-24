-- Create a trigger that runs AFTER a student is deleted
CREATE TRIGGER trg_StudentDelete
ON students
AFTER DELETE
AS
BEGIN
    -- Copy deleted student's data into student_log table
    INSERT INTO student_log (student_id, name)
    SELECT student_id, name FROM deleted;
END;
