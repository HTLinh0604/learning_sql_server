USE [NORTHWND_NEW];
-- liet ke all employee in london
select *
from Employees as e
where e.City= 'London'

-- sap xep lastname A-Z
select *
from Employees as e
where e.City= 'London'
order by e.LastName asc


-- liet ke don hang giao muon
select o.OrderID, o.RequiredDate, o.ShippedDate
from Orders as o
where o.ShippedDate > o.RequiredDate

select count(*)
from Orders as o
where o.ShippedDate > o.RequiredDate

--lay ra all orders details discount >0.1
select count(*) --od.Discount
from [Order Details] as od
where od.Discount > 0.1

--lay ra all orders details discount 0.1-0.2
select od.Discount
from [Order Details] as od
where od.Discount >0.1 and od.Discount<0.2

--bai tap
--table orders, shipcity = 'France'
select o.OrderID, o.ShipCountry
from Orders as o
where o.ShipCountry = 'France'

-- unitslnstock > 20
select p.ProductID, p.ProductName, p. UnitsInStock
from Products as p
where p.UnitsInStock > 20
order by p.UnitsInStock asc