use DB_Bank_Refah 
--query haye bakhshe 1va2 zaman bar boodan, be hamin dalil hame bakhsh ha comment kardam :|
/*
1-
	oonai k tedad mashinashoon az miangin kamtare
	**man too dataabase khodam tabdil be floatesh kardam!!!
	->1128979 records

select *
from final f 
where f.Cars_Count < (select (
							AVG(Cars_Count))
							from final 
							)
*/

/*
-------------------------------------------------------------------------
2-
	kasayi k 95 ta p7 sood so'oodi roshd kardan(ID va jensiat)
	**datatypeshoon float and too database man
	->67727 records

select f.Id , f.Gender
from final f 
where f.Sood97>f.Sood96 and f.Sood96>f.Sood95
*/

/*
-------------------------------------------------------------------------
3-
	esme asnaaf daraye harfe 'ن'
	-> 27893 records

select *
from final f
where f.SenfName Like N'%ن%'
*/

/*
------------------------------------------------------------------------
4- 
	daramade 50 salehaye <shahre> tehrani ba id va sorted
	**daramad too DB man be float , va Bdate be date hast
	->4408 records

select f.Id , f.Daramad_Total_Rials  --,f.CountyName ,  YEAR(f.BirthDate)
from final f 
where f.CountyName=N'تهران' and (YEAR(GETDATE()) - YEAR(f.BirthDate)=50)
*/

/*
-------------------------------------------------------------------------
5-
	moshtariaye mardi k sale 97 balaye 30M bardasht dashtan
	**data ha to DB man besoorate dorosteshoonan (na nvarchar)
	->502371 records

select f.Id , f.Bardasht97 , f.Gender
from final f 
where f.Gender=N'مرد' and  f.Bardasht97>30000000
*/