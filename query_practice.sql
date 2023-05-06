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
