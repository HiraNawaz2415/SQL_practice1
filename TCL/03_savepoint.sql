BEGIN TRANSACTION;

INSERT INTO Students (StudentID, Name, Age) VALUES (3, 'Zain', 23);
SAVEPOINT Save1;

INSERT INTO Students (StudentID, Name, Age) VALUES (4, 'Noor', 24);

ROLLBACK TO Save1;

COMMIT;

-- Only Zain will be saved, because we rolled back to Save1, undoing Noor’s insert.
