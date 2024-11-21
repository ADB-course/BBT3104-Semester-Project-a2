CREATE TABLE Product (
MedicineID INT AUTO_INCREMENT PRIMARY KEY,
CementName VARCHAR(200) NOT NULL,
ManufactureDate DATE NOT NULL,
ExpiryDate DATE NOT NULL,
INDEX (CementName),
INDEX (ExpiryDate)
) ENGINE=InnoDB;
 
 
 
 
 
 
 
CREATE TABLE Order(
OrderID INT AUTO_INCREMENT PRIMARY KEY,
ClientID INT NOT NULL,
OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
OrderStatus TINYINT NOT NULL,
ModeOfPayment VARCHAR(50),
INDEX (ClientID),
INDEX (OrderStaus),
INDEX (OrderDate)
) ENGINE=InnoDB;
 
CREATE TABLE StockControl(
StockID INT AUTO_INCREMENT PRIMARY KEY,
CementID INT NOT NULL,
StockQuantity INT NOT NULL,
ExpirationDate INT NOT NULL,
INDEX (CementID),
INDEX (ExpirationDate)
) ENGINE=InnoDB;
 
CREATE TABLE Customer (
ClientID INT AUTO_INCREMENT PRIMARY KEY,
CustomerName VARCHAR(255) NOT NULL,
CustomerContactInfo VARCHAR(255),
CustomerAddress VARCHAR(255),
INDEX (CustomerName),
INDEX (CustomerContactInfo)
) ENGINE = InnoDB;
CREATE TABLE Product (
CementID INT AUTO_INCREMENT PRIMARY KEY,
CementName VARCHAR(200) NOT NULL,
ManufactureDate DATE NOT NULL,
ExpiryDate DATE NOT NULL,
INDEX (CementName),
INDEX (ExpiryDate)
) ENGINE=InnoDB;
 
 
 
 
 
 
 
CREATE TABLE Order(
OrderID INT AUTO_INCREMENT PRIMARY KEY,
ClientID INT NOT NULL,
OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
OrderStatus TINYINT NOT NULL,
ModeOfPayment VARCHAR(50),
INDEX (ClientID),
INDEX (OrderStaus),
INDEX (OrderDate)
) ENGINE=InnoDB;
 
CREATE TABLE StockControl(
StockID INT AUTO_INCREMENT PRIMARY KEY,
CementID INT NOT NULL,
StockQuantity INT NOT NULL,
ExpirationDate INT NOT NULL,
INDEX (CementID),
INDEX (ExpirationDate)
) ENGINE=InnoDB;
 
CREATE TABLE Customer (
ClientID INT AUTO_INCREMENT PRIMARY KEY,
CustomerName VARCHAR(255) NOT NULL,
CustomerContactInfo VARCHAR(255),
CustomerAddress VARCHAR(255),
INDEX (CustomerName),
INDEX (CustomerContactInfo)
) ENGINE = InnoDB;
-- Write your SQL code here
