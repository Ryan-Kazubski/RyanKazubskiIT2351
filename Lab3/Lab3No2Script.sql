USE ryankazubskinorthwind;

DROP PROCEDURE IF EXISTS test;

DELIMITER //

CREATE PROCEDURE lowProdcutStock
(
IN inventory INT
)
BEGIN
  DECLARE products_count   INT;
  DECLARE inventories INT;
  SET inventories = inventory;

  SELECT COUNT(*)
  INTO products_count
  FROM products
  WHERE UnitsInStock < inventories;
  
  SELECT CONCAT(products_count, ' products have an inventory level below ', inventories, '.') AS message;
END//
DELIMITER ;

CALL lowProdcutStock(90);