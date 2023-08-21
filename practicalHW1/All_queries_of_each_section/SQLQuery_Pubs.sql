use pubs
/*
1-
	title va noe ketabaye qeymate beyne	17,21 bejoz mod_cook ha
*/
select t.title , t.type
from titles t 
where t.price<=21 and t.price>=17 and t.type<>'mod_cook'

/*
-------------------------------------------------------------------------
2-
	ID,telephone , esme nevisande haye oakland
*/
select a.au_id, a.phone ,Concat(a.au_fname, ' ', a.au_lname) Full_Name
from  authors a
where a.city='Oakland'

/*
-------------------------------------------------------------------------
3-
	karmand(aye) qadimitarin
*/
select *
From employee e1
where e1.hire_date = (select MIN(e2.hire_date)
	From employee e2)

/*
-------------------------------------------------------------------------
4-	
	ketabaye balaye 30 sal (sort shode)
*/
select *
from titles t
WHERE (YEAR(GETDATE()) - YEAR(t.pubdate))>30 ;

/*
-------------------------------------------------------------------------
5-
	tedad ketabaye forookhte +esm o addresse har nevisande
*/

select a.au_fname , a.au_lname , a.address, IsNull(SUM(S.qty),0) [Book Count]
From sales S 
JOIN titles t ON S.title_id = t.title_id 
JOIN titleauthor ta ON t.title_id = ta.title_id 
RIGHT JOIN authors a ON a.au_id = ta.au_id
GROUP BY a.au_fname , a.au_lname , a.address
