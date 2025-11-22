use [NORTHWND_NEW];
-- count of customers
select count(*) as "so luong khach hang"
from Customers as c

select count(c.CustomerID) as "so luong khach hang"
from Customers as c

--sum feight of orders
select sum(o.Freight) as "sumfeight"
from Orders as o

-- avg quantity if order details
select avg(od.Quantity) as "avg quantity"
from [Order Details] as od

--count, sum and avg of table product
select count(*) as "count",
sum(p.UnitsInStock) as "sum", 
avg(p.UnitPrice) as "avg" -- (-p.UnitsOnOrder)
from Products as p

--bai tap
-- count of table orders (*, orderID)
select count(*)
from Orders 

select count(o.OrderID)
from Orders as o

-- table order details, avg unitprice, sum quantity
select avg(od.UnitPrice) as "avg", sum(od.Quantity) as "sum"
from [Order Details] as od