use master; -- select master db.  ensures you're deleting what you're actually wanting to delete
go --ensures no rollback
drop database if exists prssql; --
go
create database prssql; --create database called prssql
go
use prssql;
go 
create table [User] (

	Id int identity (1, 1) primary key not null,
	Username nvarchar(30) not null,
	Password nvarchar(30) not null,
	Firstname nvarchar(30) not null,
	Lastname nvarchar(30) not null,
	Phone nvarchar(12) not null,
	Email nvarchar(255) not null,
	IsReviewer bit not null default 0,
	IsAdmin bit not null default 0,
	Active bit not null default 1

);

go 
create unique index uix_username on [User](Username);  --Create a unique index for the column username on table user. This is another way of making sure that usernames are not duplicated. 
go -- uix_username is the name of the index