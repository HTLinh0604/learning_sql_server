use [NORTHWND_NEW];
-- lay top 10 of customers
select  top 10 *
from Customers

-- 30% of employee
select top 30 percent *
from Employees

-- top 5 customersID , distinct
select distinct top 5 CustomerID
from Orders


--top 3 product, distinct
select distinct top 3 CategoryID
from Products