Use Northwind;
/*
-------------------------------------------------------------------------
1-
	telephone kasayi ke esmeshun ba s shuru she.
*/
Select CompanyName , Phone
From dbo.Suppliers
Where CompanyName Like 'S%' ;


/*
-------------------------------------------------------------------------
2-
	esme karmandayii ke too balaye 3 sefaresh and
*/
SELECT FirstName,LastName 
FROM Employees E
WHERE (SELECT COUNT(*) 
		FROM Orders O 
		WHERE O.EmployeeID = E.EmployeeID)>3 ;

/* 
-------------------------------------------------------------------------
3-
	esm va sene karmandayi ke onvan karishun yechizi nabashe 
*/
Select E.FirstName, E.LastName ,E.Title
From Employees E 
Where not  E.Title='Sales Representative' 

/*
-------------------------------------------------------------------------
4-
	adres va contactname customerayi ke balaye 6000 
	ta kharj dashtan(bedune takhfif)
*/
select distinct C.ContactName,C.Address
From Customers C 
join Orders O on C.CustomerID = O.CustomerID 
join [Order Details] OD1 on O.OrderID = OD1.OrderID
Where ( 6000 < ((Select SUM(OD2.UnitPrice) 
	From [Order Details] OD2 
	Where OD1.OrderID = OD2.OrderID)    *(OD1.Quantity)* (1))) 



/*
------------------------------------------------------------------------
5-
	tedad kalahaye ferestade be faranse
*/
select  SUM(od.Quantity) tedade_kalaha
from Orders o  join dbo.[Order Details] as od
on od.OrderID=o.OrderID
where o.ShipCountry='France'  









