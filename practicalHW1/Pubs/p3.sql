use pubs
/*
-------------------------------------------------------------------------
3-
	karmand(aye) qadimitarin
*/
select *
From employee e1
where e1.hire_date = (select MIN(e2.hire_date)
	From employee e2)