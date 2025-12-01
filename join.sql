use [NORTHWND_NEW];
select *
from Customers as c
inner join Orders as o
on c.CustomerID = o.CustomerID
where c.CustomerID = 'ALFKI';
