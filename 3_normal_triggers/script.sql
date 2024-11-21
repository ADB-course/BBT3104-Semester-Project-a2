CREATE TRIGGER UpdateStockAfterOrder
AFTER INSERT ON Order
FOR EACH ROW
BEGIN
  UPDATE StockControl
  SET StockQuantity = StockQuantity - 1
  WHERE CementID = NEW.CementID;
END;
 
CREATE TRIGGER PreventNegativeStock
BEFORE UPDATE ON StockControl
FOR EACH ROW
BEGIN
  IF NEW.StockQuantity < 0 THEN
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'Stock quantity cannot be negative';
  END IF;
END;
 
