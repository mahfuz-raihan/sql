-- SQL group by Statement
-- syntax:
select column_name(s),.....
from table_name
where condition
group by column_name(s),.....
order by column_name(s),.....

-- example:
select Country, count(CustomerID) as [Customer Name]
from Customers
group by Country
order by count(CustomerID) desc;

-- Group by with join example
select Shippers.ShipperName, count(Orders.OrderID) as ['Number of Order'] from Orders
left join Shippers on Orders.ShipperID=Shippers.ShipperID
group by ShipperName;
