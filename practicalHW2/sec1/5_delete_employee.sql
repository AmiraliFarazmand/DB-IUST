--5
--delete employee with ID_1 (+replace ID_2 whereever ID_exist)
--******************************************************************

create or alter procedure delete_employee (@ID_1 int , @ID_2 int)as
begin
	update Employee 
		set supervisor_ID = @ID_2 where supervisor_ID= @ID_1;
	delete from Employee where ID = @ID_1;
end

--exec delete_employee @ID_1 = 3 , @ID_2 = 4





