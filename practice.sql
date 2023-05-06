-- create database
CREATE DATABASE database_name;
create database testDB; -- example

-- Drop database
DROP DATABASE database_name;

-- table create

CREATE TABLE table_name(
	column_name1,
	column_name2,
	column_name3,
	.......
)
create table persons( --example
	personID int,
	Last_name varchar(255),
	First_name varchar(255),
	address varchar(255),
	city varchar(255)
);

-- delete table
drop table table_name;

-- Existing table modification

-- Add column
ALTER TABLE table_name
ADD column_name datatype;

alter table customers -- example
add email varchar(255);

-- delete column
ALTER TABLE table_name
DROP COLUMN column_name;
--example
alter table customers
drop column email;

-- Rename a column in a table
ALTER TABLE table_name
RENAME COLUMN old_name to new_name;

-- modifiy/change datatype
ALTER TABLE table_name
MODIFIY COLUMN column_name datatype;


-- SQL constraints
create table table_name(
	column_name datatype constraints,
	column_name1 datatype constraints,
	column_name2 datatype constraints,
	.......
);

-- sql not null constraints
create table person(
	ID int NOT NULL,
	LastName varchar(255) NOT NULL,
	FirstName varchar(255) NOT NULL,
	age int
);

-- sql not null on alter table
alter table person
modify column age int not null;

-- SQL UNIQUE constraints on create table
CREATE TABLE persons(
	ID int not null,
	LastName varchar(255) not null,
	FirstName varchar(255) not null,
	Age int,
	UNIQUE(ID)
);

-- make the multiple column to UNIQUE constraints
create table table_name(
	column_name1 datatype not null,
	column_name2 datatype not null,
	column_name3 datatype,
	CONSTRAINT new_column_name UNIQUE (ID, LastName)
);

-- sql unique constraints on alter table
alter table table_name
add unique (column_name);

-- sql unique constraints on multiple column
alter table table_name
add constraints new_column_name unique (column_name1, column_name2);

-- Delete unique constraints
alter table table_name
drop index new_table_name;

-- SQL PRIMARY KEY on CREATE TABLE
create table table_name(
	column_name1 datatype not null,
	column_name2 datatype not null,
	...........
	PRIMARY KEY (column_name1/2)	
);

-- sql primary key on multiple column
create table table_name(
	column_name1 datatype not null,
	column_name2 datatype not null,
	column_name3 datatype,
	column_name4 datatype,
	...........
	CONSTRAINT PK_person PRIMARY KEY (column_name1, column_name2)
);


-- SQL FOREIGN KEY ON CREATE TABLE
create table orders(
	OrderID int not null,
	OrderNumber int not null,
	PersonID int,
	PRIMARY KEY(OrderID),
	FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);
-- sql foreign key on multiple column with new column
create table Orders(
	OrderID int not null,
	OrderNumber int not null,
	PersonID int,
	PRIMARY KEY (OrderID),
	CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
	references Persons(PersonID)
);

-- sql check constraints
create table table_name(
	ID int not null,
	LastName varchar(255) not null,
	FirstName varchar(255),
	Age int,
	check (age >=18)
);

-- sql multiple check constraints
create table table_name(
	ID int not null,
	LastName varchar(255) not null,
	FirstName varchar(255),
	age int,
	constraint chk_person check (age>=19 and city='City_name')
);


-- sql View
 create view view_name as
 select column1, column2
 from table table_name
 where condition;
 
-- example: The following sql create a view that shows all customers from Brazil:
create view [Brazil Customers] as
select customersName, ContactName
from customers
where country = "Brazil";
