SELECT p.ProductName, oi.Quantity, SUM((p.UnitPrice - oi.Discount) * oi.Quantity) AS ProductTotal, ca.CategoryName
FROM Products p
Join categories ca On p.CategoryID = ca.CategoryID
JOIN Order_details oi ON p.ProductID = oi.ProductID
GROUP BY p.ProductName WITH ROLLUP;