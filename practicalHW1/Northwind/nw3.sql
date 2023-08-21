
Use Northwind;
/* 
-------------------------------------------------------------------------
3-
	esm va sene karmandayi ke onvan karishun yechizi nabashe 
*/
Select E.FirstName, E.LastName ,E.Title
From Employees E 
Where not  E.Title='Sales Representative' 
