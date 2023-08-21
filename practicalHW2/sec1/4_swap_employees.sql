--4
--swap 2 employees with given IDs
--******************************************************



create or alter procedure Swap_employees(  @ID_1 int ,@ID_2 int) as
begin

create table Employee2(SSN Bigint unique not	null,Fname nvarchar(50) not null,Lname nvarchar(50)  not null,
E_role nvarchar(50) not null,ID int not null primary key,supervisor_ID int  ,
foreign key (supervisor_ID) references Employee(ID),
);

select * into emp_1 from Employee2
select * into emp_2 from Employee2


declare @E_role1 nvarchar(50)
set @E_role1 = (select E_Role from Employee where ID = @ID_1)
declare @E_role2 nvarchar(50)
set @E_role2 = (select E_Role from Employee where ID = @ID_2)

insert into emp_1
select * from Employee
where ID = @ID_1
insert into emp_2
select * from Employee
where ID = @ID_2

update emp_1
	set ID = @ID_2, E_Role = @E_role2
	where ID = @ID_1
update emp_2
	set ID = @ID_1, E_Role = @E_role1
	where ID = @ID_2


insert into Employee2 select * from Employee where ID <> @ID_1 and ID <> @ID_2
insert into Employee2 select * from emp_1
insert into Employee2 select * from emp_2

drop table Employee

create table Employee(SSN Bigint unique not	null, Fname nvarchar(50) not null,Lname nvarchar(50)  not null,
E_role nvarchar(50) not null,ID int not null primary key,supervisor_ID int  ,
foreign key (supervisor_ID) references Employee(ID),
);

insert into Employee select * from Employee2
drop table Employee2

end




