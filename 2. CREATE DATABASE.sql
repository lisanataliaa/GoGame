CREATE DATABASE GoGame
GO
USE GoGame
GO 

CREATE TABLE MsStaff(
	StaffID CHAR(5) PRIMARY KEY CHECK (StaffID LIKE 'ST[0-9][0-9][0-9]'),
	StaffName VARCHAR(255) NOT NULL,
	StaffDOB DATE NOT NULL,
	StaffGender VARCHAR(20) NOT NULL, 
	Salary INT,
	StaffPhoneNumber VARCHAR(20) NOT NULL,
	StaffAddress VARCHAR(255) NOT NULL
);

CREATE TABLE Purchase (
    PurchaseID CHAR(5) PRIMARY KEY CHECK (PurchaseID LIKE 'PU[0-9][0-9][0-9]'),
    StaffID CHAR(5) NOT NULL,
    SupplierID CHAR(5) NOT NULL,
    PurchaseDate DATE NOT NULL
);

CREATE TABLE PurchaseDetail (
	PurchaseID CHAR(5) PRIMARY KEY CHECK (PurchaseID LIKE 'PU[0-9][0-9][0-9]'),
	GameID CHAR(5) NOT NULL,
	Quantity INT NOT NULL
)

CREATE TABLE MsCustomer (
	CustomerID CHAR(5) PRIMARY KEY CHECK (CustomerID LIKE 'CU[0-9][0-9][0-9]'),
	CustomerName VARCHAR(255) NOT NULL,
	CustomerGender VARCHAR(20) NOT NULL,
	CustomerAddress VARCHAR(255) NOT NULL,
	CustomerDOB DATE NOT NULL,
	CustomerPhoneNumber VARCHAR(20) NOT NULL,
);

CREATE TABLE MsSupplier(
	SupplierID CHAR(5) PRIMARY KEY CHECK (SupplierID LIKE 'SU[0-9][0-9][0-9]'),
	SupplierName VARCHAR(255) NOT NULL,
	SupplierAddress VARCHAR(255) NOT NULL,
	SupplierPhoneNumber VARCHAR(20) NOT NULL
) 

CREATE TABLE MsGameType (
   GameTypeID CHAR(5) PRIMARY KEY CHECK (GameTypeID LIKE 'GT[0-9][0-9][0-9]'),
   GameTypeName VARCHAR(50) NOT NULL
);

CREATE TABLE MsGame (
   GameID CHAR(5) PRIMARY KEY CHECK (GameID LIKE 'GA[0-9][0-9][0-9]'),
   GameTypeID CHAR(5) FOREIGN KEY REFERENCES MsGameType(GameTypeID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
   GameName VARCHAR(50) NOT NULL,
   GamePrice FLOAT NOT NULL,
   GameReleaseDate DATE NOT NULL
);

CREATE TABLE Sale (
	SaleID CHAR(5) PRIMARY KEY CHECK (SaleID LIKE 'SA[0-9][0-9][0-9]'),
	StaffID CHAR(5) NOT NULL, 
	CustomerID CHAR(5) NOT NULL, 
	SalesDate DATE NOT NULL
)

CREATE TABLE SaleDetail (
	SaleID CHAR(5) PRIMARY KEY CHECK (SaleID LIKE 'SA[0-9][0-9][0-9]'),
	GameID CHAR(5) NOT NULL,
	Quantity INT NOT NULL
)











