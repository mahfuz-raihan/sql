-- SQL MIN() and MAX() Function
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

-- SQL COUNT(), AVG() and SUM() Functions
-- SQL count()
select count(column_name)
from table_name
where condition;
-- example
select count(ProductID)
from Products;

-- SQL avg()
select avg(column_name)
from table_name
where condition;
-- example
SELECT AVG(Price)
FROM Products;

-- SQL sum()
select sum(column_name)
from table_name
where condition;
-- example
select sum(Quantity)
from OrderDetails;
