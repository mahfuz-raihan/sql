-- SQL Join
-- inner join
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

-- Inner join
-- systax
select column_name(s)
from table1
inner join table2
on table1.column_name=table2.column_name;
-- example: 3 table join
SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM ((Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);

-- Left join
select column_name(s)
from table1
left join table2
on table1.column_name=table2.column_name;

-- example:
select Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.OrderDate
from Customers
left join Orders
on Customers.CustomerID=Orders.CustomerID;

-- Right join
select column_name(s)
from table1
right join table2 on
table1.column_name=table2.column_name;

-- example: 
select Orders.EmployeeID, Orders.OrderID, Orders.OrderDate, Orders.ShipperID
from Orders
left join Employees on
Orders.EmployeeID=Employees.EmployeeID;

-- full join
select column_name(s)
from table1
full outer join table2
on table1.column_name=table2.column_name
where conditon;

-- example:
select Customers.CustomerName, Orders.OrderID
from Customers
full outer join Orders on Customers.CustomerID=Orders.CustomerID
order by Customers.CustomerName;
