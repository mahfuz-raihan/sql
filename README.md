# SQL

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
#### OR syntax
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
#### NOT syntax
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
Combination of these syntax:
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
#### IS NULL syntax
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
syntax:
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
### SQL Delete
```sql
delete from table_name where condition;
```
Example:
```sql
DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';
```
### SQL LIMIT
```sql
-- SQL limit
select column_name(s)
from table_name
where condition
limit number;
```
Example:
```sql
select * from Customers
where City='Berlin'
limit 3;
```
### SQL MIN() and MAX() Function
#### SQL MIN()

```sql
select min(column_name)
from table_name
where condition;
```
example:
```sql
SELECT MIN(Price) AS SmallestPrice
FROM Products;
```
#### SQL MAX()
```sql
select max(column_name) as new_demo_table_name
from table_name;
```
example:
```sql
select max(Price) as LargestPrice
from Products;
```

### SQL COUNT(), AVG() and SUM() Functions
#### SQL count()
syntax:
```sql
select count(column_name)
from table_name
where condition;
```
example:
```sql
select count(ProductID)
from Products;
```
#### SQL avg()
syntax:
```sql
select avg(column_name)
from table_name
where condition;
```
example:
```sql
SELECT AVG(Price)
FROM Products;
```
#### SQL sum()
syntax:
```sql
select sum(column_name)
from table_name
where condition;
```
example:
```sql
select sum(Quantity)
from OrderDetails;
```
### SQL LIKE Operator
syntax:
```sql
select column1, column2,....
from table_name
where column like pattern;
```
example: 
- The following SQL statement selects all customers with a CustomerName ending with "a":
```sql
SELECT * FROM Customers
WHERE CustomerName LIKE '%a';
```
- The following SQL statement selects all customers with a CustomerName that have "t" in the second position:
```sql
SELECT * FROM Customers
WHERE CustomerName LIKE '_r%';
```
### SQL IN operator
Syntax:
```sql
select column_name(s)
from table_name
where column_name IN (value1, value2, ........);
```
```sql
select column_name(s)
from table_name
where column_name in (select statement);
```
example: The following SQL statement selects all customers that are located in "Germany", "France" or "UK":-
```sql
select * from Customers
where Country in ('Germany', 'France','UK');
```
example: 
```
select * from Customers
where Country in (select Country from Suppliers) and City like '%sa%'
order by Country asc;
```
### SQL BETWEEN Operator
Syntax:
```sql
select column_name(s)
from table_name
where column_name between value1 and value2;
```
example:
```sql
select * from Products
where Price not between 10 and 40;
```
example: text between
```sql
select * from Products
where ProductName between 'Carnarvon Tigers' and 'Mozzarella di Giovanni'
order by ProductName;
```
### SQL Aliases
Syntax:
```sql
select column_name as alias_name
from table_name;
```
another is
```sql
select column_name
from table_name as alias_name;
```
example:
```sql
select CustomerID as ID, CustomerName as [Contact Person], CONCAT(Address,', ',PostalCode,' ',City,', ',Country) as Address from Customers;
```
Alias for Tables Example:
```sql
select o.OrderID, o.OrderDate, c.CustomerName
from Customers AS c, Orders AS o
where c.CustomerName='Around the Horn' and c.CustomerID = o.CustomerID;
```

### SQL JOIN
| **Keyword**  | **Description**  |
|--------------|------------------|
|(Inner) JOIN|Return records that have matching value in both tables|
|LEFT (OUTER) JOIN|Returns all from that left table, and tha matched records from right table|
| RIGHT (OUTER) JOIN |Returns all records from right table, and the matched records from the left table|
| FULL (OUTER) JOIN | Returns all records when there is a match in either left or right table |

#### inner join
-- syntax
```sql
select column_name(s)
from table1
inner join table2
on table1.column_name=table2.column_name;
```
example: 3 table join
```sql
SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM ((Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);
```

#### Left join
```sql
select column_name(s)
from table1
left join table2
on table1.column_name=table2.column_name;
```
example:
```sql
select Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.OrderDate
from Customers
left join Orders
on Customers.CustomerID=Orders.CustomerID;
```
#### Right join
```sql
select column_name(s)
from table1
right join table2 on
table1.column_name=table2.column_name;
```
example: 
```sql
select Orders.EmployeeID, Orders.OrderID, Orders.OrderDate, Orders.ShipperID
from Orders
left join Employees on
Orders.EmployeeID=Employees.EmployeeID;
```
#### full join
```sql
select column_name(s)
from table1
full outer join table2
on table1.column_name=table2.column_name
where conditon;
```
example:
```sql
select Customers.CustomerName, Orders.OrderID
from Customers
full outer join Orders on Customers.CustomerID=Orders.CustomerID
order by Customers.CustomerName;
```
