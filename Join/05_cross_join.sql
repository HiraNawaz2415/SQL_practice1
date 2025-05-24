---Think of it as: "Pair everything with everything."
---=================================================

SELECT Students.Name, Departments.DepartmentName
FROM Students
CROSS JOIN Departments;
