Select ContactName AS Contact, ProductName As Product, round((order_details.UnitPrice*(1-Discount)*Quantity),0) As TotalPrice
From order_details
Join products on products.ProductID = order_details.ProductID
Natural Join customers
Order By ContactName, ProductName;