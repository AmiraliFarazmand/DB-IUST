use Northwind
/*
-------------------------------------------------------------------------
2-
	esme karmandayii ke too balaye 3 sefaresh and
*/
SELECT FirstName,LastName 
FROM Employees e
WHERE (SELECT COUNT(*) 
		FROM Orders O 
		WHERE O.EmployeeID = E.EmployeeID)>3;