SELECT ProductName, UnitPrice
FROM products
WHERE UnitPrice>
(SELECT AVG(UnitPrice)
FROM products
WHERE UnitPrice > 0)
ORDER BY UnitPrice DESC;