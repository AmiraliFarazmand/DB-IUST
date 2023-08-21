use pubs
/*
1-
	title va noe ketabaye qeymate beyne	17,21 bejoz mod_cook ha
*/
select t.title , t.type
from titles t 
where t.price<=21 and t.price>=17 and t.type<>'mod_cook'
