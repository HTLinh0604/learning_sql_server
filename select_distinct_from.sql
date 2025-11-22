-- lay cac country khac nhau
USE [NORTHWND_NEW];
select distinct Country
from Customers

-- lay cac postal code khac nhau
select distinct PostalCode
from Suppliers

-- lay lastname and title of courtesy
select distinct LastName, TitleOfCourtesy
from Employees

-- lay shipvia of orders
select distinct ShipVia
from Orders