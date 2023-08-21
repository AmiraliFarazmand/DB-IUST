use DB_Bank_Refah 
/*
1-
	oonai k tedad mashinashoon az miangin kamtare
	**man too dataabase khodam tabdil be floatesh kardam!!!
	->1128979 records
*/
select *
from final f 
where f.Cars_Count < (select (
							AVG(Cars_Count))
							from final 
							)