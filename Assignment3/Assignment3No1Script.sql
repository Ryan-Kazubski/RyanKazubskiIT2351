SELECT ShippedDate, Freight, ShipVia, shippers.ShipperID, shippers.CompanyName
FROM orders
JOIN shippers
ON orders.ShipVIa = shippers.ShipperID
ORDER BY CompanyName ASC;

