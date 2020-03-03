Select CategoryName, Count(ProductID) As Count, Max(UnitPrice) As MostExpensive
From Categories
Join Products On Categories.CategoryID = Products.CategoryID
Group By CategoryName
Order by Count(ProductID) Desc;