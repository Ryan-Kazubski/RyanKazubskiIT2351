USE ryankazubskinorthwind;

DROP PROCEDURE IF EXISTS test;

DELIMITER //

CREATE PROCEDURE lowProdcutStock()
BEGIN
  DECLARE products_count   INT;

  SELECT COUNT(*)
  INTO products_count
  FROM products
  WHERE UnitsInStock <= 29;
  
  SELECT CONCAT(products_count, ' products have an inventory level below 30.') AS message;
END//
DELIMITER ;

CALL lowProdcutStock();