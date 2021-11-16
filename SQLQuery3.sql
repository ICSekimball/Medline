SELECT Lastname, Firstname, CompanyName, ROUND(SUM(Quantity*(unitprice-unitprice*discount)),2) as SumofSubtotal
FROM Orders
join [Order Details]
on [Order Details].OrderID=orders.OrderID
join Customers
on Customers.CustomerID=orders.CustomerID
join Employees
on Employees.EmployeeID=orders.EmployeeID
Group by Lastname, Firstname, CompanyName
HAVING SUM(Quantity*(Unitprice-unitprice*discount)) > 5000
Order by Lastname asc, SumofSubtotal desc;



