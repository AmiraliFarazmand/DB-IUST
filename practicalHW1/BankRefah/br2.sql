
use DB_Bank_Refah 
/*
-------------------------------------------------------------------------
2-
	kasayi k 95 ta p7 sood so'oodi roshd kardan(ID va jensiat)
	**datatypeshoon float and too database man
	->67727 records
*/

select f.Id , f.Gender
from final f 
where f.Sood97>f.Sood96 and f.Sood96>f.Sood95
