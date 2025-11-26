USE [NORTHWND_NEW];
-- tinh so luong don dat hang trong nam 1997 cua tung khach hang
select year(o.OrderDate) as "year" ,o.CustomerID, count(o.OrderID)
from Orders as o
where year(o.OrderDate) = 1997
group by CustomerID, year(o.OrderDate)

SELECT [CustomerID], 
	COUNT(*) AS [Số lượng đơn hàng]
FROM [dbo].[Orders]
WHERE YEAR([OrderDate])=1997
GROUP BY [CustomerID];

-- lay ds cac don duoc dat vao 4/9/1996
--c1
select *
from Orders as o
where day(o.OrderDate)= 04 and month(o.OrderDate) = 09 and year(o.OrderDate) = 1996

--c2

select *
from Orders as o
where o.OrderDate = '1996-09-04'

-- lay ds khach hang dat hang trong nam 1998 va so don hang moi thang, sap xep theo thang tang dan
select o.CustomerID, month(o.OrderDate) as [month], count(o.OrderID) as totalorders
from Orders as o
where year(o.OrderDate) = 1998
group by OrderDate, CustomerID
order by month(o.OrderDate) asc

--loc cac don hang da duoc giao thang 5 va asc theo nam
select *--, year(o.ShippedDate)
from Orders as o
where month(o.ShippedDate) = 5
--group by ShippedDate, OrderID
order by year(o.ShippedDate) asc

select [OrderID],count(*) as "TotalOrders", year([ShippedDate]) as "năm"
, MONTH([ShippedDate]) as "tháng"
from [dbo].[Orders]
where month([ShippedDate])=5
group by [OrderID], YEAR([ShippedDate]), MONTH([ShippedDate])
order by YEAR([ShippedDate]) asc