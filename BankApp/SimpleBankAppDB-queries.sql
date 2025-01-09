--CREATE TABLE Customer (
--    CustomerId INT PRIMARY KEY, 
--    Name VARCHAR(100) NOT NULL,
--    Email VARCHAR(100) NOT NULL UNIQUE,
--    PhoneNumber VARCHAR(15),
--    Address NVARCHAR(255)
--);

--CREATE TABLE Account (
--    AccountNumber INT PRIMARY KEY, 
--    Balance DECIMAL(18, 2) NOT NULL,
--    AccountType VARCHAR(50) NOT NULL,
--    Owner INT NOT NULL, 
--    CONSTRAINT FK_Account_Customer FOREIGN KEY (Owner) REFERENCES Customer(CustomerId)
--);

--CREATE TABLE Transactions (
--    TransactionId INT PRIMARY KEY, 
--    Date DATETIME NOT NULL DEFAULT GETDATE(), 
--    Amount DECIMAL(18, 2) NOT NULL,
--    AccountNumber INT NOT NULL, 
--    CONSTRAINT FK_Transaction_Account FOREIGN KEY (AccountNumber) REFERENCES Account(AccountNumber)
--);

--INSERT INTO Customer (CustomerId, Name, Email, PhoneNumber, Address)
--VALUES 
--(1, 'Anna Andersson', 'anna.andersson@example.com', '0701234567', 'Storgatan 1'),
--(2, 'Erik Svensson', 'erik.svensson@example.com', '0709876543', 'Lillgatan 2'),
--(3, 'Maria Karlsson', 'maria.karlsson@example.com', '0705555555', 'Torget 3');

--INSERT INTO Account (AccountNumber, Balance, AccountType, Owner)
--VALUES 
--(101, 5000.00, 'Savings', 1), 
--(102, 12000.00, 'Checking', 1), 
--(103, 7500.00, 'Investment', 1),
--(201, 3000.00, 'Savings', 2), 
--(202, 10000.00, 'Checking', 2), 
--(203, 9500.00, 'Investment', 2),
--(301, 8000.00, 'Savings', 3), 
--(302, 15000.00, 'Checking', 3), 
--(303, 10500.00, 'Investment', 3); 

--INSERT INTO Transactions (TransactionId, Date, Amount, AccountNumber)
--VALUES 
--(1, '2025-01-08', 2000.00, 101), 
--(2, '2025-01-09', 500.00, 102), 
--(3, '2025-01-10', 1500.50, 103);

--SELECT * FROM Customer;
--SELECT * FROM Account;
--SELECT * FROM Transactions;

--ALTER TABLE Transactions
--ADD CustomerId INT NULL;

--UPDATE Transactions
--SET CustomerId = a.Owner
--FROM Transactions t
--JOIN Account a ON t.AccountNumber = a.AccountNumber;

--ALTER TABLE Transactions
--ALTER COLUMN CustomerId INT NOT NULL;

--ALTER TABLE Transactions
--ADD CONSTRAINT FK_Transactions_Customer FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId);

--select * from Transactions;

--select * from Customer;

--INSERT INTO Transactions (TransactionId, Date, Amount, AccountNumber, CustomerId)
--VALUES (4, '2025-01-08', 1000.00, 201, 2);

--INSERT INTO Transactions (TransactionId, Date, Amount, AccountNumber, CustomerId)
--VALUES (5, '2025-01-08', 10000.00, 303, 3);

--select * from Transactions;

--select * from Customer;

--INSERT INTO Customer (CustomerId, Name, Email, PhoneNumber, Address)
--VALUES (4, 'Sven Svensson', 'sven.svensson@example.com', '0701234567', 'Storgatan 5, Stockholm');

--SELECT * FROM Customer;

--UPDATE Customer
--SET Address = 'Storgatan 1, Stockholm'
--WHERE CustomerId = 1;

--UPDATE Customer
--SET Address = 'Lillgatan 2, Göteborg'
--WHERE CustomerId = 2;

--UPDATE Customer
--SET Address = 'Torget 3, Malmö'
--WHERE CustomerId = 3;

--select * from Customer;

--DELETE FROM Customer
--WHERE CustomerId = 4;

--select * from Customer;

--select * from Account;

--INSERT INTO Account (AccountNumber, Balance, AccountType, Owner)
--VALUES (104, 1000.00, 'Personal', 1);

--select * from Account;

--SELECT t.TransactionId, t.Date, t.Amount, a.AccountNumber
--FROM Transactions t
--JOIN Account a ON t.AccountNumber = a.AccountNumber
--WHERE a.Owner = 2;

--SELECT c.Name, a.AccountNumber, a.AccountType, a.Balance
--FROM Customer c
--JOIN Account a ON c.CustomerId = a.Owner
--WHERE a.Owner = 3;

--SELECT c.Name, a.AccountNumber, a.AccountType, a.Balance
--FROM Customer c
--JOIN Account a ON c.CustomerId = a.Owner
--WHERE a.Owner = 1;