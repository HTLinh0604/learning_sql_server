use [NORTHWND_NEW]
select *
FROM dbo.Customers
where Country = 'Germany'
having COUNT(CustomerID) > 5
order by Country;
