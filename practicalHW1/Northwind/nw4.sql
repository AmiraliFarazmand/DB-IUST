use Northwind
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
