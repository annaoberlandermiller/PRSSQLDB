/*create table PurchaseRequestLineitem (

	Id int not null primary key identity (1,1),
	PurchaseRequestId int foreign key references PurchaseRequest(Id) not null,
	ProductID int foreign key references Product(Id) not null,  
	Quantity int not null default 1,
	Active bit default 1 not null

); */

select * from PurchaseRequestLineitem