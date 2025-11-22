use [NORTHWND_NEW];
-- min of table products
select min(p.UnitPrice) as "gia thap nhat"
from Products as p;

-- max day of order
select max(o.OrderDate) as "ngay gan nhat"
from Orders as o

--find product , ID and name, max unitslnstock
select max(p.UnitsInStock) as "so luong ton kho"
from Products as p


-- bai tap
-- max ege employee
select min(e.BirthDate) 
from Employees as e 