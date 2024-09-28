
-- PURCHASE TRANSACTION
--1 Staff wants to know the lowest quantity of the game that has been purchased because they need to restock
SELECT * FROM PurchaseDetail
ORDER BY Quantity ASC


--2 Staff wants to check which supplier that provide the game
SELECT * FROM MsSupplier
ORDER BY SupplierName


--3 Staff purchasing the game from supplier
INSERT INTO Purchase VALUES
('PU149', 'ST001', 'SU001', 'GA123', '2023-06-01', 2)


-- Transaction done

-- SALE TRANSACTION
SELECT 
    SaleID,
    NewMsStaff.[Staff ID],
    NewMsStaff.[Staff Name],
    NewMsCustomer.[CUST ID],
    NewMsCustomer.Customer,
    NewMsCustomer.[Phone Number],
    NewMsGame.[Game ID],
    NewMsGame.[Game Name],
    SUM(Quantity * NewMsGame.Price) AS 'Total Price'
FROM Sale, (
    SELECT 
        StaffID AS 'Staff ID',
        StaffName AS 'Staff Name'
    FROM MsStaff
    WHERE StaffID LIKE 'ST022'
) NewMsStaff, (
    SELECT 
        CustomerName AS 'Customer',
        CustomerID AS 'CUST ID',
        CustomerPhoneNumber AS 'Phone Number'
    FROM MsCustomer
    WHERE CustomerID LIKE 'CU146'
) NewMsCustomer, (
    SELECT 
        GameID AS 'Game ID',
        GameName AS 'Game Name',
        GamePrice AS 'Price'
    FROM MsGame
    WHERE GameID LIKE 'GA124'
) NewMsGame
WHERE SaleID LIKE 'SA136'
GROUP BY 
SaleID,
NewMsStaff.[Staff ID],
NewMsStaff.[Staff Name],
NewMsCustomer.[CUST ID],
NewMsCustomer.Customer,
NewMsCustomer.[Phone Number],
NewMsGame.[Game ID],
NewMsGame.[Game Name]