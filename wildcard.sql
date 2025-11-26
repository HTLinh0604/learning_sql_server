USE [NORTHWND_NEW];
-- loc ra tat ca khach hang co ten lien he bat dau 'A'
select *
from Customers as c
where c.CompanyName like 'A%';

-- hay loc ra all khach hang co ten lien he bat dau bang chu 'H' va co chu thu 2 la bat ky ky tu nao
select c.CompanyName
from Customers as c
where c.CompanyName like 'H_%';

-- loc ra all don hang duoc gui den thanh pho bat dau bang 'L' chu cai thu 2 la 'u' or 'o'
select o.ShipCity
from  Orders as o 
where o.ShipCity like 'L[u,o]%' ;

-- loc ra cac city bat dau bang L, ky tu 2 ko co o, u
select o.ShipCity
from Orders as o
where o.ShipCity like 'L[^(u,o)]%'

-- loc ra cac city bat dau bang L, ky tu 2 tu a den e
select o.ShipCity
from Orders as o
where o.ShipCity like 'L[a-e]%'


-- lay ra all nha cc co ten cty bat dau bang chu A va khong chua ky tu b
select s.CompanyName
from Suppliers as s

where s.CompanyName like 'A[^b]%'
