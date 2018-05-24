create table product (

	Id int primary key identity (1,1),
	VendorId int not null foreign key references vendor(Id),
	PartNumber nvarchar(50) not null,
	Name nvarchar(150) not null,
	Price decimal(10,2) default 10 not null,
	Unit nvarchar(25) not null,
	PhotoPath nvarchar(255) not null,
	Active bit default 1 not null

);

go
create unique index uix_vendorid on product(VendorID);
go

select *
from product