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
Combination of these systax
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
