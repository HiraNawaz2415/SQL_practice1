-- "Give me everything — matches and non-matches from both tables."
---===================================================
SELECT Students.Name, Departments.DepartmentName
FROM Students
FULL JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;
