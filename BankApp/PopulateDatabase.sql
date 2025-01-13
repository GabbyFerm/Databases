--select * from Customer;

--INSERT INTO Customer (CustomerId, Name, Email, PhoneNumber, Address)
--VALUES 
--(4, 'Sven Svensson', 'sven.svensson@example.com', '0702345678', 'Kyrkogatan 4'),
--(5, 'Lena Nilsson', 'lena.nilsson@example.com', '0703456789', 'Hamngatan 5'),
--(6, 'Olof Persson', 'olof.persson@example.com', '0704567890', 'Huvudgatan 6'),
--(7, 'Emma Larsson', 'emma.larsson@example.com', '0705678901', 'Parkvägen 7'),
--(8, 'Johan Berg', 'johan.berg@example.com', '0706789012', 'Trädgårdsgatan 8'),
--(9, 'Karin Olsson', 'karin.olsson@example.com', '0707890123', 'Sjövägen 9'),
--(10, 'Mattias Ek', 'mattias.ek@example.com', '0708901234', 'Industrigatan 10');

--select * from Customer;

--Jag hade stad efter adressen separerat med kommatecken, valde att skapa en egen kolumn för detta
--ALTER TABLE Customer
--ADD City NVARCHAR(100);

--Uppdaterade Customer 1-3 som hade stad i sin adress för att ta bort det
--UPDATE Customer
--SET Address = 'Storgatan 1'
--WHERE CustomerId = 1;

--UPDATE Customer
--SET Address = 'Lillgatan 2'
--WHERE CustomerId = 2;

--UPDATE Customer
--SET Address = 'Torget 3'
--WHERE CustomerId = 3;

--Här lägger jag in stad på alla Customers
--UPDATE Customer
--SET City = 'Stockholm'
--WHERE CustomerId = 1;

--UPDATE Customer
--SET City = 'Göteborg'
--WHERE CustomerId = 2;

--UPDATE Customer
--SET City = 'Malmö'
--WHERE CustomerId = 3;

--UPDATE Customer
--SET City = 'Uppsala'
--WHERE CustomerId = 4;

--UPDATE Customer
--SET City = 'Helsingborg'
--WHERE CustomerId = 5;

--UPDATE Customer
--SET City = 'Stockholm'
--WHERE CustomerId = 6;

--UPDATE Customer
--SET City = 'Göteborg'
--WHERE CustomerId = 7;

--UPDATE Customer
--SET City = 'Helsingborg'
--WHERE CustomerId = 8;

--UPDATE Customer
--SET City = 'Norrköping'
--WHERE CustomerId = 9;

--UPDATE Customer
--SET City = 'Uppsala'
--WHERE CustomerId = 10;

--select * from Account;

--Fylla på Accounts med konton
---- Insert accounts for customer 4
--INSERT INTO Account (AccountNumber, Balance, AccountType, Owner)
--VALUES 
--(401, 4000.00, 'Savings', 4), 
--(402, 9000.00, 'Checking', 4);

---- Insert accounts for customer 5
--INSERT INTO Account (AccountNumber, Balance, AccountType, Owner)
--VALUES 
--(501, 2500.00, 'Savings', 5), 
--(502, 7000.00, 'Personal', 5);

---- Insert accounts for customer 6
--INSERT INTO Account (AccountNumber, Balance, AccountType, Owner)
--VALUES 
--(601, 1500.00, 'Savings', 6), 
--(602, 8000.00, 'Investment', 6);

---- Insert accounts for customer 7
--INSERT INTO Account (AccountNumber, Balance, AccountType, Owner)
--VALUES 
--(701, 3500.00, 'Checking', 7), 
--(702, 12000.00, 'Savings', 7);

---- Insert accounts for customer 8
--INSERT INTO Account (AccountNumber, Balance, AccountType, Owner)
--VALUES 
--(801, 10000.00, 'Investment', 8), 
--(802, 5000.00, 'Checking', 8);

---- Insert accounts for customer 9
--INSERT INTO Account (AccountNumber, Balance, AccountType, Owner)
--VALUES 
--(901, 7000.00, 'Savings', 9), 
--(902, 11000.00, 'Investment', 9);

---- Insert accounts for customer 10
--INSERT INTO Account (AccountNumber, Balance, AccountType, Owner)
--VALUES 
--(1001, 4500.00, 'Personal', 10), 
--(1002, 7500.00, 'Savings', 10);

--select * from Transactions;

--Fylla på med ett gäng transaktioner då det bara fanns 5 st, tar först bort all tidigare info för att inte få konflikter.

--DELETE FROM Transactions;

---- Transactions for Customer 1
--INSERT INTO Transactions (TransactionId, Date, Amount, AccountNumber, CustomerId)
--VALUES 
--(6, '2025-01-11', 250.00, 101, 1),
--(7, '2025-01-12', 600.00, 102, 1),
--(8, '2025-01-13', 1200.00, 104, 1),
--(9, '2025-01-14', 450.00, 103, 1);

---- Transactions for Customer 2
--INSERT INTO Transactions (TransactionId, Date, Amount, AccountNumber, CustomerId)
--VALUES 
--(10, '2025-01-09', 300.00, 201, 2),
--(11, '2025-01-10', 1200.00, 202, 2),
--(12, '2025-01-11', 2000.00, 201, 2),
--(13, '2025-01-12', 100.00, 203, 2);

-- Transactions for Customer 3
--INSERT INTO Transactions (TransactionId, Date, Amount, AccountNumber, CustomerId)
--VALUES 
--(14, '2025-01-11', 400.00, 301, 3),
--(15, '2025-01-12', 800.00, 302, 3),
--(16, '2025-01-13', 1500.00, 303, 3),
--(17, '2025-01-14', 700.00, 301, 3);

---- Transactions for Customer 4
--INSERT INTO Transactions (TransactionId, Date, Amount, AccountNumber, CustomerId)
--VALUES 
--(18, '2025-01-10', 900.00, 401, 4),
--(19, '2025-01-11', 1500.00, 402, 4);

---- Transactions for Customer 5
--INSERT INTO Transactions (TransactionId, Date, Amount, AccountNumber, CustomerId)
--VALUES 
--(20, '2025-01-12', 700.00, 501, 5),
--(21, '2025-01-13', 200.00, 502, 5);

---- Transactions for Customer 6
--INSERT INTO Transactions (TransactionId, Date, Amount, AccountNumber, CustomerId)
--VALUES 
--(22, '2025-01-10', 350.00, 601, 6),
--(23, '2025-01-11', 800.00, 602, 6);

---- Transactions for Customer 7
--INSERT INTO Transactions (TransactionId, Date, Amount, AccountNumber, CustomerId)
--VALUES 
--(24, '2025-01-09', 1200.00, 701, 7),
--(25, '2025-01-10', 1000.00, 702, 7);

---- Transactions for Customer 8
--INSERT INTO Transactions (TransactionId, Date, Amount, AccountNumber, CustomerId)
--VALUES 
--(26, '2025-01-11', 500.00, 801, 8),
--(27, '2025-01-12', 900.00, 802, 8);

---- Transactions for Customer 9
--INSERT INTO Transactions (TransactionId, Date, Amount, AccountNumber, CustomerId)
--VALUES 
--(28, '2025-01-09', 400.00, 901, 9),
--(29, '2025-01-10', 1100.00, 902, 9);

---- Transactions for Customer 10
--INSERT INTO Transactions (TransactionId, Date, Amount, AccountNumber, CustomerId)
--VALUES 
--(30, '2025-01-11', 500.00, 1001, 10),
--(31, '2025-01-12', 750.00, 1002, 10);

---- Transactions for Customer 2
-- Existing transactions: 4, add 6 more
--INSERT INTO Transactions (TransactionId, Date, Amount, AccountNumber, CustomerId)
--VALUES 
--(32, '2025-01-13', 250.00, 202, 2),
--(33, '2025-01-14', 800.00, 203, 2),
--(34, '2025-01-15', 150.00, 201, 2),
--(35, '2025-01-16', 900.00, 202, 2),
--(36, '2025-01-17', 400.00, 203, 2),
--(37, '2025-01-18', 300.00, 201, 2);

------ Transactions for Customer 3
---- Existing transactions: 4, add 6 more
--INSERT INTO Transactions (TransactionId, Date, Amount, AccountNumber, CustomerId)
--VALUES 
--(38, '2025-01-15', 500.00, 303, 3),
--(39, '2025-01-16', 350.00, 302, 3),
--(40, '2025-01-17', 600.00, 301, 3),
--(41, '2025-01-18', 700.00, 302, 3),
--(42, '2025-01-19', 900.00, 303, 3),
--(43, '2025-01-20', 250.00, 301, 3);

------ Transactions for Customer 4
---- Existing transactions: 2, add 4 more
--INSERT INTO Transactions (TransactionId, Date, Amount, AccountNumber, CustomerId)
--VALUES 
--(44, '2025-01-13', 500.00, 401, 4),
--(45, '2025-01-14', 800.00, 402, 4),
--(46, '2025-01-15', 350.00, 401, 4),
--(47, '2025-01-16', 1200.00, 402, 4);

------ Transactions for Customer 5
---- Existing transactions: 2, add 4 more
--INSERT INTO Transactions (TransactionId, Date, Amount, AccountNumber, CustomerId)
--VALUES 
--(48, '2025-01-14', 200.00, 501, 5),
--(49, '2025-01-15', 700.00, 502, 5),
--(50, '2025-01-16', 150.00, 501, 5),
--(51, '2025-01-17', 300.00, 502, 5);

------ Transactions for Customer 6
---- Existing transactions: 2, add 4 more
--INSERT INTO Transactions (TransactionId, Date, Amount, AccountNumber, CustomerId)
--VALUES 
--(52, '2025-01-12', 100.00, 601, 6),
--(53, '2025-01-13', 500.00, 602, 6),
--(54, '2025-01-14', 700.00, 601, 6),
--(55, '2025-01-15', 350.00, 602, 6);

------ Transactions for Customer 7
---- Existing transactions: 2, add 4 more
--INSERT INTO Transactions (TransactionId, Date, Amount, AccountNumber, CustomerId)
--VALUES 
--(56, '2025-01-13', 900.00, 701, 7),
--(57, '2025-01-14', 1200.00, 702, 7),
--(58, '2025-01-15', 300.00, 701, 7),
--(59, '2025-01-16', 150.00, 702, 7);

------ Transactions for Customer 8
---- Existing transactions: 2, add 4 more
--INSERT INTO Transactions (TransactionId, Date, Amount, AccountNumber, CustomerId)
--VALUES 
--(60, '2025-01-14', 800.00, 801, 8),
--(61, '2025-01-15', 400.00, 802, 8),
--(62, '2025-01-16', 200.00, 801, 8),
--(63, '2025-01-17', 150.00, 802, 8);

------ Transactions for Customer 9
---- Existing transactions: 2, add 4 more
--INSERT INTO Transactions (TransactionId, Date, Amount, AccountNumber, CustomerId)
--VALUES 
--(64, '2025-01-13', 500.00, 901, 9),
--(65, '2025-01-14', 700.00, 902, 9),
--(66, '2025-01-15', 600.00, 901, 9),
--(67, '2025-01-16', 300.00, 902, 9);

------ Transactions for Customer 10
---- Existing transactions: 2, add 4 more
--INSERT INTO Transactions (TransactionId, Date, Amount, AccountNumber, CustomerId)
--VALUES 
--(68, '2025-01-14', 400.00, 1001, 10),
--(69, '2025-01-15', 800.00, 1002, 10),
--(70, '2025-01-16', 300.00, 1001, 10),
--(71, '2025-01-17', 250.00, 1002, 10);

--select * from Transactions;
