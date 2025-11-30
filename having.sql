use [NORTHWND_NEW];
select * 
from Customers as a;
where exists (
    select *
    from orders as b
    where a.CustomerID = b.CustomerID
)