create table PurchaseRequest (

	Id int primary key not null identity (1,1),
	UserID int foreign key references [user] not null,
	[Description] nvarchar(100) not null,
	Justification nvarchar(255) not null,
	DeliveryMode nvarchar(25) not null,
	Status nvarchar(10) default 'New' not null,
	Total decimal(10,2) default 0 not null,
	Active bit default 1,
	ReasonForRejection nvarchar(100)

);

select *
from PurchaseRequest