Select Country, CompanyName, CategoryName, ProductName
From suppliers
Join products on products.SupplierID = suppliers.SupplierID
Join categories on categories.CategoryID = products.CategoryID
Order By Country, CompanyName, CategoryName, ProductName;