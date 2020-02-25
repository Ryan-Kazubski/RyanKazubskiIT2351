Select Concat(TitleOfCourtesy,' ', FirstName,' ', LastName) AS EmployeeName, Date_format(HireDate, '%m-%d-%y') AS Hired, Datediff(now(),HireDate)/365 As YearsEmployed
From employees;