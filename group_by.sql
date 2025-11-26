USE [NORTHWND_NEW];
-- hay cho biet moi khach hang da dat bao nhieu don hang
select o.CustomerID, count(*) as [tong don hang]
from Orders as o
group by CustomerID

-- hay tinh gia tri don gia avg theo moi nha cc san pham
select p.SupplierID, avg(p.UnitPrice)
from Products as p
group by SupplierID


-- cho biet moi the loai co tong so bao nhieu san pham trong kho
select p.CategoryID, sum(p.UnitsInStock) as sumUnitsInStock
from Products as p
group by CategoryID

--hay cho biet gia van chuyen thap va lon nhat cua cac don hang theo tung thanh pho va quoc gia
select  o.ShipCity, o.ShipCountry, min(o.Freight) as minFreight, max(o.Freight) as maxFreight
from Orders as o
group by o.ShipCity, o.ShipCountry
order by ShipCountry,ShipCity asc

-- hay thong ke so luong nhan vien theo tung quoc gia khac nhau
select e.Country, count(e.EmployeeID)
from Employees as e

group by e.Country
--
select e.Country, e.City ,count(e.EmployeeID) as "tong nv"
from Employees as e
where e.Country is not null and e.City is not null
group by e.Country, e.City
order by e.Country, e.City asc


--Thống kê số khách hàng ở từng quốc gia, từng thành phố
--Tìm các khách hàng có CompanyName có chữ a trong tên
--Sắp xếp theo chiều A-Z Country

select c.Country, c.City, count(c.CustomerID) as "tong khach hang"
from Customers as c
where c.CompanyName like '%a%' and
c.Country is not null and c.City is not null
group by c.Country, c.City
order by c.Country asc, c.City asc

-- Tính tổng số tiền vận chuyển ở từng thành phố, quốc qua
-- Chỉ lấy những ShipName có có chữ 'b' 
--Sắp xếp theo chiều từ A-Z của ShipNAme

select o.ShipCity, o.ShipCountry,sum(o.Freight)
from orders as o
where o.ShipName like '%b%' and
o.ShipCity is not null and o.ShipCountry is not null
group by o.ShipCity, o.ShipCountry
order by o.ShipCity asc, o.ShipCountry asc





