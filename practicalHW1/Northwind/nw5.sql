Use Northwind;
/*
------------------------------------------------------------------------
5-
	tedad kalahaye ferestade be faranse
*/
select  SUM(od.Quantity) tedade_kalaha
from Orders o  join dbo.[Order Details] as od
on od.OrderID=o.OrderID
where o.ShipCountry='France'  

