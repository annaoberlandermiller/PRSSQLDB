create table vendor (
	Id int primary key identity (1,1) not null,
	Code nvarchar(30) not null,
	Name nvarchar(255) not null,
	Address nvarchar(255) not null,
	City nvarchar(255) not null,
	State nvarchar(2) not null,
	Zip nvarchar(5) not null,
	Phone nvarchar(12) not null,
	Email nvarchar(255) not null,
	IsPreApproved bit default 0,
	Active bit default 1

);	
go
create unique index uix_Code on vendor(code);
go

select *
from vendor;
