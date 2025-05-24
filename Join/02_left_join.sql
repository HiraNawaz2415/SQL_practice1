--"Show me all students, even if they don’t belong to any department."
---===========================================================
SELECT Students.Name, Departments.DepartmentName
FROM Students
LEFT JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;
