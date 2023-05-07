-- sql select statement
select column1, column2
from table_name;
-- example
select CustomerName, ContactName, Country
from Customers;

-- sql distict statement
select distinct column
from table_name;

-- sql WHERE statement (condition apply)
select column1, column2
from table_name
where condition;

-- SQL AND, OR and NOT Operators
-- AND syntax
select column1, column2,...
from table_name
where condition1 AND condition2 AND condition3;

-- example
select * from Customers
where Country='Germany' and City='Berlin';

-- OR systax
select column1, column2,...
from table_name
where condition1 OR condition2 OR condition3;
--example
SELECT * FROM Customers
WHERE City='Berlin' OR City='München';

SELECT * FROM Customers
WHERE Country='Germany' OR Country='Spain';

-- NOT systax
select column1, column2,...
from table_name
where NOT condition1;

-- example
SELECT * FROM Customers
WHERE NOT Country='Sweden';

-- Conbining AND, OR and NOT
SELECT * FROM Customers
WHERE NOT Country='Germany' AND NOT Country='USA';

-- SQL order by keyword
select column1, column2,...
from table_name
order by column1, column2 ASC|DESC;

-- example
SELECT * FROM Customers
ORDER BY Country;

-- SQL TOP, limit, fetch first or rownum

-- SQL limit
select column_name(s)
from table_name
where condition
limit number;
-- example
select * from Customers
where City='Berlin'
limit 3;

-- SQL MIN() and MAX()
-- SQL MIN()
select min(column_name)
from table_name
where condition;
-- example
SELECT MIN(Price) AS SmallestPrice
FROM Products;

-- SQL MAX()
select max(column_name) as new_demo_table_name
from table_name;
-- example
select max(Price) as LargestPrice
from Products;

-- SQL LIKE Operator
select column1, column2,....
from table_name
where column like pattern;
-- example
SELECT * FROM Customers
WHERE CustomerName LIKE '%a';

-- SQL IN operator
Syntax:
select column_name(s)
from table_name
where column_name IN (value1, value2, ........);

select column_name(s)
from table_name
where column_name in (select statement);
-- example: The following SQL statement selects all customers that are located in "Germany", "France" or "UK":-
select * from Customers
where Country in ('Germany', 'France','UK');
-- example: 
select * from Customers
where Country in (select Country from Suppliers) and City like '%sa%'
order by Country asc;

-- SQL BETWEEN Operator
select column_name(s)
from table_name
where column_name between value1 and value2;
-- example:
select * from Products
where Price not between 10 and 40;
-- example: text between
select * from Products
where ProductName between 'Carnarvon Tigers' and 'Mozzarella di Giovanni'
order by ProductName;

-- SQL Aliases
select column_name as alias_name
from table_name;
-- another is
selet column_name
from table_name as alias_name;
-- example:
select CustomerID as ID, CustomerName as [Contact Person], CONCAT(Address,', ',PostalCode,' ',City,', ',Country) as Address from Customers;
