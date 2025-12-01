use [NORTHWND_NEW];


select *
from Customers as a
where a.CustomerID in (
    select CustomerID
    from Orders
)

