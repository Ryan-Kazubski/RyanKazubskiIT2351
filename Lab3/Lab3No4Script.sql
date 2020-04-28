CREATE OR REPLACE VIEW EmployeeReview
AS
SELECT concat(e.FirstName, e.LastName) as EmployeeName, c.ContactName, p.ProductName, o.OrderDate, order_details.Quantity
FROM   orders o
JOIN employees e ON o.EmployeeID = e.EmployeeID
JOIN customers c ON o.CustomerID = c.CustomerID
JOIN order_details ON o.OrderID = order_details.OrderID
JOIN products p ON order_details.UnitPrice = p.UnitPrice

