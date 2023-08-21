--insert given tuples into Employee table
--*********************************************************************
use Company;
delete  from Employee  
insert into employee(E_role ,SSN , Lname ,Fname , ID , supervisor_ID, lvl)
values('CEO', 1234567890 , 'Jafari', 'Ali', 1 , Null , '/1/') , 
('HRM' , 1236547524 , 'Kazemi' , 'Zahra' , 2 , 1 , '/1/1/'), 
('FM' , 1236523654, 'Akbari' , 'Saleh',3 , 1 , '/1/2/'),
('TM' , 1246578125 , 'Bageri' , 'Reza' , 4 , 1 , '/1/3/'),
('E' , 4512547856 , 'Ahmadi', 'Sina' ,5,3 , '/1/2/1/'),
('E' , 2365478941, 'Zare', 'Maleki' , 6,4 , '/1/1/1/'),
('E' , 1230212015 , 'Askari' , 'Maryam' , 7,4 , '/1/1/2/'),
('E' , 1203201458 , 'Moradi', 'Mehrdad' , 8 , 4 , '/1/1/3/')
;
--select * from Employee