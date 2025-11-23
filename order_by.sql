USE [NORTHWND_NEW];
-- liet ke companyname  theo thu tu A-Z
select *
from Suppliers as s
order by s.CompanyName ASC; -- ascending

--unitprice of products DESC
select *
from Products as p
order by p.UnitPrice DESC; --descending

-- liet ke employee theo A-Z no use ASC, DESC
select *
from Employees as e 
order by e.LastName, e.FirstName

-- no use max, top 1 max of Quantity table order details
select top 1 *
from [Order Details] as de
order by de.Quantity desc

-- bai tap
-- orderdate desc, of table orders
select o.OrderID, o.OrderDate
from Orders as o
order by o.OrderDate desc

-- liet ke productname, unitprice, unitslstock of table products desc unitslnstock
select p.ProductName, p.UnitPrice, p.UnitsInStock
from Products as p 
order by p.UnitsInStock desc