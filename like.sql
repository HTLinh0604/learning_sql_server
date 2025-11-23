USE [NORTHWND_NEW];
-- fitter A
select *
from Customers as c 
where c.Country like 'A%'

-- shipname like a
select *
from Orders as o
where o.ShipCity like '%a%'


-- ship country like 'U_' and Shipcountry like 'U%'

select o.ShipCountry
from Orders as o
--where o.ShipCountry like 'U_' -- 1 ky tu
where o.ShipCountry like 'U%' -- 0,1,2,3... ky tu
 
--'b' in name
select *
from Suppliers as s
where s.CompanyName like '%b%'

--Trong bảng products, hãy tìm ra các sản phẩm:
-- Có tên chứa chữ y trong đó
-- giá bán lớn hơn giá trung bình sản phẩm 
-- sắp xếp theo thứ tự giá bán từ nhỏ đến lớn

select *
from Products as p
where (p.ProductName like '%y%') and (p.UnitPrice > (select avg (UnitPrice) from Products))
order by p.UnitPrice asc

-- trong bảng customer, tìm ra khách hàng:
-- Đến từ thành phố bắt đầu bang chữ A
-- Đến từ nước MỸ
-- Sắp xếp theo tên từ Z-A

select *
from Customers as c 
where c.City like 'A%' and c.Country = 'USA'
order by c.CompanyName asc


--Challenge1: Write an SQL statement to list employees fullname with the letter "e" in the last name 
--and born from 1952-01-01 to 1962-12-31, 
--arrange in A-Z order by first Name
--taking only the first 5 lines

select TOP 5*, e.[FirstName] + ' ' + e.[LastName]
from Employees as e
where (e.BirthDate between '1952-01-01' and '1962-12-31') and e.[LastName] Like '%e%'
order by e.FirstName asc

--Challenge 2: Write an SQL statement to list employees fullname with 'U__' (two underscores) in the [Country]
-- and start working from 1992-03-23 to 1994-12-31
-- agrange in Z-A order by the last name
--taking only the first 4 lines

select TOP 4*
from Employees as e
where (e.HireDate between '1992-03-23' and '1994-12-31') and e.Country Like 'U__'
order by e.LastName desc