use [NORTHWND_NEW];
-- lay CompanyName and mabuudien change name
select  CustomerID as [makh], CompanyName as tencongty, PostalCode as "mabuudien", City "thanhpho"
from Customers;


--lastname and firstname change name
select LastName as "Ho", FirstName as "Ten"
from Employees

-- top 15 of orders as o
select top 15 o.*
from Orders as "o"


--bai tap
--top 5 table products as p, productname as tensanpham, supplierID as manhacc, categoryIS as matheloai
select top 5 p.ProductName as "tensanpham", p.SupplierID as [manhacc], p.CategoryID as matheloai
from Products as "p"
