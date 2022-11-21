--1
create table MsRoomTheme (
RoomThemeID	    CHAR	(6 )Primary Key
check (RoomThemeID like 'ROT[0-9][0-9][0-9]'),
RoomThemeName	VARCHAR	(35)not null 
check(len(RoomThemeName)>=3),
RoomThemeClass	VARCHAR	(10)not null,


)
--2
begin tran
alter table MsEmployee
add EmployeeAddress varchar(100)

alter table MsEmployee
add constraint pegawai
check (EmployeeAddress like '%street')
rollback

--3
insert into MsTreatment values
('TRM011',	'Robotic Facial',	'2890000')

--4
select TransactionID, TransactionDate
from HeaderTransaction
where TransactionDate like '2021-05%'

--5
--join 
select *from MsEmployee as me join HeaderTransaction as ht
on me.EmployeeID=ht.EmployeeID
where TransactionID = 'svt014'

--update

update MsEmployee
set EmployeeSalary = EmployeeSalary + 200000

from MsEmployee as me join HeaderTransaction as ht
on me.EmployeeID=ht.EmployeeID
where TransactionID = 'svt014'
select *from MsEmployee
