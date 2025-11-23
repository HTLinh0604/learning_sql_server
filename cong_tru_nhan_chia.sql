USE [NORTHWND_NEW]
--strockremaining = unitstock (con lai trong kho) - unitonorder (dang dat hang)
select p.ProductID, p.ProductName, 
(p.UnitsInStock-p.UnitsOnOrder) as stockremaining
from Products as p

-- orderdetailvalue= unotprice x quantity
select *, (od.UnitPrice*od.Quantity) as orderdetailvalue
from [Order Details] as od

-- freightratio = avg(feight)/max(freight)
select avg(o.Freight) as "avg", max(o.Freight) as "max", (avg(o.Freight)/max(o.Freight)) as freightratio
from Orders as o

-- bai tap
--  gia sau khi giam 10%
select p.ProductID, p.ProductName, p.UnitPrice, (p.UnitPrice-(p.UnitPrice*0.1)) as "NewPrice"
from Products as p
--c1
select p.ProductID, p.ProductName, p.UnitPrice, (p.UnitPrice*0.9) as "after discont 10%"
from Products as p
--c2
select p.ProductID, p.ProductName, p.UnitPrice, ((p.UnitPrice*90)/100) as "after discont 10%"
from Products as p