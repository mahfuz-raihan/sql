# sql

```sql
create table Student_Table(
	Id int not null ,
	Name varchar(255) not null,
	Class_id int not null
);

/*insert into Student_Table values (01, 'John', 301);*/

create table Class_Table(
	Id int not null,
	Name varchar(255) not null,
);


-- insert into Class_Table values (301, 'Database');



select Class_Table.Name as Class, count(Student_Table.Id) as 'Number of Student', 
from Class_Table
left join Student_table 
on Class_Table.Id = Student_Table.Class_id
group by Class;

```
### SQL AND, OR and NOT Operators
#### AND Syntax
```sql
select column1, column2,...
from table_name
where condition1 AND condition2 AND condition3;
```
Example:
```sql
select * from Customers
where Country='Germany' and City='Berlin';
```
#### OR systax
```sql
select column1, column2,...
from table_name
where condition1 OR condition2 OR condition3;
```
Example:
```sql
SELECT * FROM Customers
WHERE City='Berlin' OR City='München';
```
#### NOT systax
```sql
select column1, column2,...
from table_name
where NOT condition1;
```
Example:
```sql
SELECT * FROM Customers
WHERE NOT Country='Sweden';
```
Combination of these systax:
```sql
SELECT * FROM Customers
WHERE NOT Country='Germany' AND NOT Country='USA';
```
### The SQL ORDER BY Keyword

```sql
select column1, column2,...
from table_name
order by column1, column2... ASC|DESC;
```
Example:
```sql
SELECT * FROM Customers
ORDER BY Country;
```
### SQL INSERT INTO Statement
```sql
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
```
Example:
```sql
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');
```
another:
```sql
INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');
```
### NULL Values
#### IS NULL systax
```sql
SELECT column_names
FROM table_name
WHERE column_name IS NULL;
```
Example:
```sql
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;
```
#### IS NOT NULL
```sql
SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;
```
Example:
```sql
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NOT NULL;
```

### SQL UPDATE Statement
Systax:
```sql
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```
Example:
```sql
UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;
```
UPDATE Multiple Records:
```sql
UPDATE Customers
SET ContactName='Juan'
WHERE Country='Mexico';
```
