-- SQL Union operator
-- syntax:
select column_name(s) from table1
union
select column_name(s) from table2;
-- example:
select City, Country from Customers
where Country='Germany'
union all
select City, Country from Suppliers
where Country='Germany'
order by City;
