SELECT ProductName, order_details.UnitPrice, Quantity, products.ProductID, order_details.ProductID
FROM order_details
JOIN products
ON order_details.ProductID = products.ProductID
WHERE order_details.UnitPrice >= 21
ORDER BY order_details.ProductID;