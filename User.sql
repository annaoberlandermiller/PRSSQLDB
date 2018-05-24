create database [User]

create table [User] (

	Id int primary key default (1,1) not null,
	Username nvarchar(30) not null unique,
	Password nvarchar(30) not null,
	Firstname nvarchar(30) not null,
	Lastname nvarchar(30) not null,
	Phone nvarchar(12) not null,
	Email nvarchar(255) not null,
	IsReviewer bit,
	IsAdmin bit,
	Active bit

);
