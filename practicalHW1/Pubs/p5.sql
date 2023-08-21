use pubs
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