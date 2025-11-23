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

--Thử thách 1: Viết câu lệnh SQL liệt kê họ và tên nhân viên,
-- chỉ sống ở London,
--có ngày tháng năm sinh từ đến 1/1/1952 đến 31/12/1963 
--hoặc ngày tuyển từ 1/2/1992 đến 31/12/1993
-- chỉ lấy 3 nhân viên đầu tiên sắp xếp theo [LastName] A-Z.
select top 3 *
from Employees as e
where (e.City = 'London') and ((e.BirthDate between '1952-01-01' and '1963-12-31') 
or (e.BirthDate between '1992-02-01' and '1983-12-31'))
order by e.LastName asc

--Thử thách 2: Viết câu lệnh SQL liệt kê các đơn hàng, 
-- [OrderDate] từ 01-07-1996 đến 01-09-1996
-- [OrderID] từ 10000 đến 10250
--Sắp xếp theo [ShipName] Z-A.

select *
from Orders as o 
where (o.OrderDate between '1996-07-01' and '1996-09-01') 
and (o.OrderID between 10000 and 10250)
order by o.ShipName desc
