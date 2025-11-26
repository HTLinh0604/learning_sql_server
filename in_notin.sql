USE [NORTHWND_NEW];
-- don hang duoc giao den
select o.ShipCountry
from Orders as o 
where o.ShipCountry in ('Germany','UK','Brazil');

-- don hang gaio den cac quoc gia khac

select o.ShipCountry
from Orders as o 
where o.ShipCountry not in ('Germany','UK','Brazil');
