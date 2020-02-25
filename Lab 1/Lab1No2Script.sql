Select Concat(FirstName,' ', LastName) AS EmployeeName, customers.CompanyName AS Company
From employees, orders
Join customers on customers.CustomerID = orders.CustomerID
Where customers.Country = "Germany";