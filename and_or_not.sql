USE [NORTHWND_NEW];
-- all product is unitlnstock <50 or >100
select *
from Products as p 
where p.UnitsInStock < 50 or p.UnitsInStock > 100

--orders Brazil, da bi giao muon
select *
from Orders as o
where o.ShipCountry = 'Brazil' and o.ShippedDate > o.RequiredDate

-- all product is price < 100$ and categolyID <> 1
select *
from Products as p
where not (p.UnitPrice >= 100 or p.CategoryID = 1)

-- bai tap
-- all product is freight [50,100]
select o.Freight
from Orders as o
where o.Freight >=50 and o.Freight<=100 --Where NOT ([Freight] < 50 OR [Freight] >100);

--all product is unitslnstock > 20 and unitonorder < 20
select p.UnitsInStock, p.UnitsOnOrder
from Products as p
where p.UnitsInStock > 20 and p.UnitsOnOrder < 20 --NOT ([UnitsInStock] <20 Or [UnitsOnOrder] > 20)

--Viết câu lệnh SQL tìm ra nhan vien không phải ở USA và chỉ lấy 5 khác hàng đầu tiên, 
--sắp xếp theo thứ tự [Lastname] A-Z và tạo ra cột full name
select top 5*, fullname = e.FirstName + ' '+ e.LastName
from Employees as e
where not (e.Country = 'USA' )
order by e.LastName asc

--Hãy liệt kê các khách hàng ở france hoặc ở brazil(Lưu ý sử dụng 2 cách NOT và OR)
select *
from Customers as c
where not (c.Country <> 'France' and c.Country <> 'Brazil')
--where c.Country = 'France' or c.Country= 'Brazil'



