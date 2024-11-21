CREATE FUNCTION GetExpiringCementsReport(cutoffDate DATE)
RETURNS TABLE
AS
RETURN
  SELECT CementID, CementName, CementType, ExpiryDate
  FROM Product
  WHERE ExpiryDate <= cutoffDate;
