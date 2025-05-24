--- "Show me all departments, even if no student is in them."
---=========================================================

SELECT Students.Name, Departments.DepartmentName
FROM Students
RIGHT JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;
