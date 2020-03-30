SELECT o.OrderID, DATE(o.OrderDate) as OrderDate, o.Freight
FROM orders o
Join customers c On o.CustomerID = c.CustomerID
WHERE c.Country Like "%Germany%" OR "%Mexico%" OR "%Spain%"
ORDER BY o.Freight DESC;