CREATE PROCEDURE UpdateOrderStatus(IN orderID INT, IN newStatus VARCHAR(20))
BEGIN
  UPDATE Order
  SET OrderStatus = newStatus
  WHERE OrderID = orderID;
END;


10.6 Stored Routines as Functions
CREATE FUNCTION GetExpiringCementsReport(cutoffDate DATE)
RETURNS TABLE
AS
RETURN
  SELECT CementID, CementName, CementType, ExpiryDate
  FROM Product
  WHERE ExpiryDate <= cutoffDate;
