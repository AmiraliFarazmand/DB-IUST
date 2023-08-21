--6
--insert new employee
--************************************************************************
create or alter procedure insert_new_employee(
@SSN Bigint  ,
@Fname nvarchar(50),
@Lname nvarchar(50),
@E_role nvarchar(50),
@ID int ,
@supervisor_ID int  ,
@lvl hierarchyid  
)
as 
begin
	insert into Employee(E_role ,SSN , Lname ,Fname , ID , supervisor_ID, lvl)
		VALUES (@E_role , @SSN , @Lname , @Fname ,@ID , @supervisor_ID , @lvl)
end



--exec insert_new_employee @SSN=126942044,@Fname='akbar' , @Lname='akbari',@E_role='E' , @ID=18 , @supervisor_ID=3 ,@lvl='/1/'