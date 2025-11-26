USE [NORTHWND_NEW];
-- don hang duoc giao den
select o.ShipCountry
from Orders as o 
where o.ShipCountry in ('Germany','UK','Brazil');

-- don hang gaio den cac quoc gia khac

select o.ShipCountry
from Orders as o 
where o.ShipCountry not in ('Germany','UK','Brazil');

-- lay ma cac sp co ma the loai <> 2,3,4
select p.CategoryID
from Products as p
where p.CategoryID not in (2,3,4)

--liet ke cac nv ko phai la nu tu bang nhan vien
select e.TitleOfCourtesy
from Employees as e
where e.TitleOfCourtesy not in ('Ms.','Mrs.')

--liet ke cac nv tu bang nhan vien
select e.TitleOfCourtesy
from Employees as e
where e.TitleOfCourtesy  in ('Ms.','Mrs.')


-- lay all khach hang den tu tp: Berlin, London, Warszawa
select c.City
from Customers as c

where c.City in ('Berlin', 'London', 'Warszawa')