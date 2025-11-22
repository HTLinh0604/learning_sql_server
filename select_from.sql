-- viết câu lệnh sql lấy ra tên của tất cả các sản phẩm
USE [NORTHWND_NEW];
SELECT [ProductName]
FROM [dbo].[Products];

-- viết câu lệnh lấy tên 
-- giá bán mỗi đơn vị, số lượng mỗi đơn vị
SELECT [ProductName], [UnitPrice],[QuantityPerUnit]
FROM [dbo].[Products];