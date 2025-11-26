USE [NORTHWND_NEW];
-- lay all don hang chua duoc giao hang
select ShippedDate --count(*)
from Orders as o
where o.ShippedDate is null

-- lay ds khach hang co region is not null
select c.Region
from Customers as c
where c.Region is not null

-- lay ds khach hang ko ten cty
select *
from Customers as c
where c.CompanyName is null


-- lay ra tat ca cac don hang chua duoc giao va khu vuc giao hang is not null
select ShippedDate, ShipRegion
from Orders as o
where o.ShippedDate is  null and o.ShipRegion is not null