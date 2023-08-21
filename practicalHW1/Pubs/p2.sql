use pubs
/*
-------------------------------------------------------------------------
2-
	ID,telephone , esme nevisande haye oakland
*/
select a.au_id, a.phone ,Concat(a.au_fname, ' ', a.au_lname) Full_Name
from  authors a
where a.city='Oakland'
