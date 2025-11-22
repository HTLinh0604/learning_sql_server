-- viết câu lệnh sql lấy ra tên của tất cả các sản phẩm
USE [NORTHWND_NEW];
SELECT [ProductName]
FROM [dbo].[Products];

-- viết câu lệnh lấy tên 
-- giá bán mỗi đơn vị, số lượng mỗi đơn vị
SELECT [ProductName], [UnitPrice],[QuantityPerUnit]
FROM [dbo].[Products];


-- lấy tên công ty của khách hàng và quốc gia
SELECT [CompanyName], [Country] -- SELECT CompanyName, Country
FROM [dbo].[Customers]; -- FROM dbo.Customers

-- bài tập
-- Viết sql lấy tên công ty và số điện thoại của tất cả nhà CC
SELECT CompanyName, Phone
FROM dbo.Suppliers;

--Lấy ra Category Name, Description và Picture trong bảng Categories
SELECT [CategoryName],[Description],[Picture]
FROM [dbo].[Categories]

-- Lấy ra mã đơn hàng, CustomerID ở trong bảng Orders 
SELECT [OrderID],[CustomerID]
FROM [dbo].[Orders]

--Lấy ra hết toàn bộ thông tin từ Shippers và Employees
SELECT *
FROM [dbo].[Shippers], [dbo].[Employees]

--Lọc tên nhà cung cấp có đơn giá thấp nhất
SELECT [ProductName], [UnitPrice]
FROM [dbo].[Products]
ORDER BY [UnitPrice] DESC

