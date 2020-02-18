SELECT ShippedDate, Quantity, shippers.CompanyName, ProductName, orders.CustomerID, customers.CustomerID, ContactName
From orders
Natural JOIN order_details
Natural JOIN products
Natural JOIN shippers
JOIN customers ON orders.CustomerID = customers.CustomerID
order by ContactName, ProductName;
