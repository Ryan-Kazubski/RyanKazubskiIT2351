Select CompanyName, CategoryName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued
From products
Join categories on categories.CategoryID = products.CategoryID
Join suppliers on suppliers.SupplierID = products.SupplierID
Where UnitsInStock < 10
Order by UnitPrice;