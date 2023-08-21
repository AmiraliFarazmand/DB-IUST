use pubs
/*
-------------------------------------------------------------------------
4-	
	ketabaye balaye 30 sal (sort shode)
*/
select *
from titles t
WHERE (YEAR(GETDATE()) - YEAR(t.pubdate))>30 ;
