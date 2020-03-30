select s.CompanyName, p.ProductName, SUM(oi.Quantity) AS "TotalQuantity/Product"
From products p
Join suppliers s On p.SupplierID = s.SupplierID
JOIN Order_details oi ON p.ProductID = oi.ProductID
Group by p.ProductName
Order By s.CompanyName;