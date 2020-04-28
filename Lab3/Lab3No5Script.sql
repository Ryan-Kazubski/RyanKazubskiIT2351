SELECT Concat(EmployeeName,' ', ContactName) as EmployeeAndContact, Sum(Quantity) as Quantity
FROM EmployeeReview;