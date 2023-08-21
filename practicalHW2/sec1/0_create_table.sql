--create table employee 
---******************************************************************************


--drop database Company
--create database Company
use  Company ;
drop table Employee
create table Employee(
SSN Bigint unique not	null,
Fname nvarchar(50) not null,
Lname nvarchar(50)  not null,
E_role nvarchar(50) not null,
ID int not null primary key,
supervisor_ID int  ,
lvl hierarchyid default Null ,
foreign key (supervisor_ID) references Employee(ID),
);