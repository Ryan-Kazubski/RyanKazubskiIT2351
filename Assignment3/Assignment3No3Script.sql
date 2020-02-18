SELECT products.ProductName, categories.CategoryName, suppliers.CompanyName
FROM products
Natural JOIN categories
natural JOIN suppliers
ORDER BY CategoryName, ProductName;