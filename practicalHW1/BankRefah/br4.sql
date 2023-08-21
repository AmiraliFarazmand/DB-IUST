use DB_Bank_Refah 
/*
------------------------------------------------------------------------
4- 
	daramade 50 salehaye <shahre> tehrani ba id va sorted
	**daramad too DB man be float , va Bdate be date hast
	->4408 records
*/

select f.Id , f.Daramad_Total_Rials  --,f.CountyName ,  YEAR(f.BirthDate)
from final f 
where f.CountyName=N'تهران' and (YEAR(GETDATE()) - YEAR(f.BirthDate)=50)