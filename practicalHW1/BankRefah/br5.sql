
use DB_Bank_Refah 
/*
-------------------------------------------------------------------------
5-
	moshtariaye mardi k sale 97 balaye 30M bardasht dashtan
	**data ha to DB man besoorate dorosteshoonan (na nvarchar)
	->502371 records
*/

select f.Id , f.Bardasht97 , f.Gender
from final f 
where f.Gender=N'مرد' and  f.Bardasht97>30000000