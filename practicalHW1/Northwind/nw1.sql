Use Northwind;
/*
-------------------------------------------------------------------------
1-
	telephone kasayi ke esmeshun ba s shuru she.
*/
Select CompanyName , Phone
From dbo.Suppliers
Where CompanyName Like 'S%' ;
