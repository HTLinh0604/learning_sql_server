USE [NORTHWND_NEW];
-- giua 10 - 20
select p.UnitPrice
from Products as p
where p.UnitPrice between 10 and 20; -->=10 and <=20

-- 1995-07-01 - 1996-07-31
select o.OrderDate
from Orders as o
where o.OrderDate between '1995-07-01' and '1996-07-31'


-- sum freight , 1996-07-01 - 1996-07-31
select sum(o.Freight) as tongtienvanchuyen
from Orders as o
where o.OrderDate between '1996-07-01' and '1996-07-31'

-- bai tap
 --'1997-01-01' and '1997-12-31' and o.ShipVia = '3'
select o.ShipVia, o.OrderDate
from Orders as o
where (o.OrderDate between '1997-01-01' and '1997-12-31') and o.ShipVia = '3'