--3
--lower_ranked_employees
--**************************************************************************
create or alter procedure lower_ranked_employees (@ID int) as
begin
    if (select E_role from Employee E where E.id = @ID) = 'HRM'
    begin
    	select * from Employee;
    end

	else
	begin
		select E1.*
		from Employee E1 , Employee E2
		where E2.ID= @ID and E1.lvl = '%E2.lvl%';
	end

end
