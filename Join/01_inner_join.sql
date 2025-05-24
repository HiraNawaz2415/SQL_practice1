--Think of it as: "Show me only the matches."
---==========================================
--This gives names of students with matching departments.
SELECT Students.Name, Departments.DepartmentName
FROM Students
INNER JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;


