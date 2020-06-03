pg_dump firma -f firmaD.sql

--
USE master ;  
GO  
DROP DATABASE firmaD ;  
GO 

--
RESTORE firmaD
FROM DISK = 'C:\Program Files\SQL\pakiet\bazy\firmad.bak'

--
BACKUP DATABASE AdventureWorks2017
TO DISK = 'C:\Program Files\SQL\pakiet\bazy\AdventureW17' WITH FORMAT;

--

CREATE VIEW view_log AS SELECT employee.loginID as login,
  department.name AS department
  FROM AdventureWorks2017.HumanResources.Employee AS employee,
  AdventureWorks2017.HumanResources.Department AS department,
  AdventureWorks2017.HumanResources.EmployeeDepartmentHistory AS employeeDepartHist
  WHERE DepHistory.BusinessEntityID = Employee.BusinessEntityID AND DepHistory.DepartmentID = department.departmentID
