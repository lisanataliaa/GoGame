-- Soal Nomor 1
SELECT 
[StaffID] = REPLACE(mc.CustomerID, 'ST', 'Staff'),
[StaffName] = UPPER(StaffName), 
[Total Sales] = COUNT(SaleID)
FROM MsStaff ms
JOIN Sale s ON ms.StaffID = s.StaffID
JOIN MsCustomer mc ON s.CustomerID = mc.CustomerID
WHERE StaffGender = 'Male' AND CustomerGender = 'Female'
GROUP BY REPLACE(mc.CustomerID, 'ST', 'Staff'), StaffName


-- Soal Nomor 2 
SELECT
	p.PurchaseID,
	[PurchaseDate] = CONVERT(VARCHAR, PurchaseDate, 103),
	[Total Game Type] = COUNT(GameTypeID)
FROM Purchase p
JOIN PurchaseDetail pd ON p.PurchaseID = pd.PurchaseID
JOIN MsGame mg ON pd.GameID = mg.GameID
WHERE YEAR(PurchaseDate) = 2019
GROUP BY p.PurchaseID, PurchaseDate
HAVING COUNT(GameTypeID) > 2


-- Soal Nomor 3
SELECT
	[CustomerCode] = REVERSE(mc.CustomerID),
	[CustomerName] = UPPER(CustomerName),
	[TotalTransaction] =  COUNT(DISTINCT pd.PurchaseID),
	[MinimumPurchase] = MIN(sd.Quantity)
FROM MsCustomer mc 
JOIN Sale s ON mc.CustomerID = s.CustomerID
JOIN SaleDetail sd ON s.SaleID = sd.SaleID
JOIN MsGame mg ON sd.GameID = mg.GameID
JOIN PurchaseDetail pd ON mg.GameID = pd.GameID
JOIN Purchase p ON pd.PurchaseID = p.PurchaseID
WHERE CustomerName LIKE 'M%'
GROUP BY REVERSE(mc.CustomerID), CustomerName
HAVING COUNT (pd.PurchaseID) > 1


--  Soal Nomor 4
SELECT msu.SupplierID, 
[SupplierName] = CONCAT(SupplierName,  ' Inc.'),
[TotalGamesSold] = SUM(quantity),
	[MaximumGamesSold] = MAX(quantity)
FROM MsSupplier msu
JOIN Purchase p ON msu.SupplierID = p.SupplierID
JOIN PurchaseDetail pd ON p.PurchaseID = pd.PurchaseID
WHERE SupplierAddress LIKE '%Drive%'
AND CAST(RIGHT(msu.SupplierID, 1) AS INT) % 2 != 1
GROUP BY msu.SupplierID, SupplierName


-- Soal Nomor 5
SELECT 
	P.PurchaseID, P.SupplierID, msu.SupplierName,
	[StaffFirstName] = SUBSTRING(StaffName, 1, CHARINDEX(' ', StaffName) - 1),
	ms.StaffDOB 
FROM MsSupplier msu
JOIN Purchase p ON msu.SupplierID = p.SupplierID
JOIN MsStaff ms ON p.StaffID = ms.StaffID
JOIN PurchaseDetail pd ON p.PurchaseID = pd.PurchaseID
WHERE ms.StaffID IN (
	SELECT StaffID
	FROM MsStaff
	WHERE Salary > (
		SELECT AVG(Salary)
		FROM MsStaff
	) 
	AND YEAR(StaffDOB) > 2000
) 



-- Soal Nomor 6
SELECT 
	s.SaleID, s.SalesDate, 
	[CustomerName] = LOWER(CustomerName)
FROM MsCustomer mc 
JOIN Sale s ON s.CustomerID = mc.CustomerID
WHERE mc.CustomerID IN (
	SELECT mc.CustomerID
	FROM MsCustomer mc 
	JOIN Sale s ON s.CustomerID = mc.CustomerID
	JOIN SaleDetail sd ON s.SaleID = sd.SaleID
	WHERE DATEDIFF(YEAR, CustomerDOB, GETDATE()) < 24
	GROUP BY mc.CustomerID
	HAVING AVG(sd.Quantity) < (
		SELECT AVG(Quantity)
		FROM SaleDetail
	)
)


-- Soal Nomor 7
SELECT
	[PurchasedDay] = DAY(SalesDate),
	[GameID] = REPLACE(mg.GameID, 'GA', 'Game'),
	[GameReleasedYear] = YEAR(GameReleaseDate),
	[TotalPurchased] = SUM(sd.Quantity)
FROM Sale s
JOIN SaleDetail sd ON s.SaleID = sd.SaleID
JOIN MsGame mg ON sd.GameID = mg.GameID
JOIN PurchaseDetail pd ON mg.GameID = pd.GameID
WHERE GamePrice > (
	SELECT AVG(GamePrice)
	FROM MsGame
)
AND	DATEPART(QUARTER, GameReleaseDate) = 2
GROUP BY DAY(SalesDate), mg.GameID, mg.GameReleaseDate


-- Soal Nomor 8
SELECT
	[SalesID] = LOWER(s.SaleID),
	[SalesDate] = CONVERT(VARCHAR, s.SalesDate, 105),
	[TotalSalesCost] = CONCAT('Rp. ', SUM(sd.Quantity * GamePrice))
FROM Sale s
JOIN MsStaff ms ON s.StaffID = ms.StaffID
JOIN Purchase p ON ms.StaffID = p.StaffID
JOIN PurchaseDetail pd ON p.PurchaseID = pd.PurchaseID
JOIN MsGame mg ON pd.GameID = mg.GameID
JOIN SaleDetail sd ON mg.GameID = sd.GameID
WHERE s.StaffID IN (
	SELECT StaffID 
	FROM MsStaff
	WHERE Salary > (
		SELECT AVG(Salary)
		FROM MsStaff
	) 
) 
	AND MONTH(SalesDate) = 2
	GROUP BY LOWER(s.SaleID), SalesDate


-- Soal Nomor 9
CREATE VIEW Customer_Quarterly_Transaction_View AS
SELECT 
	mc.CustomerID, mc.CustomerName,
	[TotalTransaction] = COUNT(p.PurchaseID),
	[MaximumPurchaseQuantity] = CONCAT(MAX(sd.Quantity), 'Pc(s)')
FROM MsCustomer mc
JOIN Sale s ON mc.CustomerID = s.CustomerID
JOIN SaleDetail sd ON s.SaleID = sd.SaleID
JOIN MsGame mg ON MG.GameID = sd.GameID
JOIN PurchaseDetail pd ON mg.GameID = pd.GameID
JOIN Purchase p ON pd.PurchaseID = p.PurchaseID 
JOIN MsStaff ms ON p.StaffID = ms.StaffID
WHERE YEAR(SalesDate) = 2021  AND StaffGender = 'Female'
GROUP BY mc.CustomerID, mc.CustomerName


-- Soal Nomor 10 
CREATE VIEW QuarterlySalesReport AS
SELECT
	[TotalSales] = CONCAT('Rp.', SUM(sd.Quantity * mg.GamePrice)),
	[AverageSales] = CONCAT('Rp.', AVG(sd.Quantity * mg.GamePrice))
FROM SaleDetail sd 
JOIN MsGame mg ON sd.GameID = mg.GameID
JOIN PurchaseDetail pd ON mg.GameID = pd.GameID
JOIN Purchase p ON pd.PurchaseID = p.PurchaseID
WHERE DATENAME(QUARTER, PurchaseDate) = 1
AND mg.GamePrice > 200000




