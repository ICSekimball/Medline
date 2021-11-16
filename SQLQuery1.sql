SELECT Orderdate, ([Order Details].UnitPrice*Quantity) as SalesPrice, CategoryName, ([Order Details].UnitPrice*Quantity*Discount) as SalesDiscount, FORMAT(discount, 'P0') as Discount
FROM Orders
JOIN [Order Details]
ON [Order Details].OrderID=Orders.OrderID
JOIN Products
ON Products.ProductID=[Order Details].ProductID
JOIN Categories
ON Categories.CategoryID=Products.CategoryID

