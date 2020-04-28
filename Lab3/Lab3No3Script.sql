DROP FUNCTION IF EXISTS get_inventory_level

DELIMITER //

CREATE FUNCTION get_inventory_level
(
   product_name VARCHAR(50)
)
RETURNS INT
DETERMINISTIC READS SQL DATA
BEGIN
  DECLARE inventory_level INT;
  
  SELECT UnitsInStock
  INTO inventory_level
  FROM products
  WHERE ProductName = product_name;
  
  RETURN(inventory_level);
END//

DELIMITER ;

SELECT UnitsInStock, ProductName
FROM products
WHERE UnitsInStock = get_inventory_level('Chai');