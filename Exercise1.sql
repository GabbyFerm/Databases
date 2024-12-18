--create table Customers (
--CustomerID int primary key, Name varchar(255), Email varchar(255), City varchar(255)
--);

--create table Products (
--ProductID int primary key, Productname varchar(255), Price decimal(10, 2)
--);

--create table Orders (
--OrderID int primary key, CustomerID int, ProductID int, OrderDate date,
--FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
--FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
--);

--INSERT INTO Customers (CustomerID, Name, Email, City) 
--VALUES 
--(1, 'Anna Andersson', 'anna.andersson@email.com', 'Stockholm'),
--(2, 'Erik Eriksson', 'erik.eriksson@email.com', 'Göteborg'),
--(3, 'Lisa Svensson', 'lisa.svensson@email.com', 'Malmö'),
--(4, 'Johan Karlsson', 'johan.karlsson@email.com', 'Uppsala'),
--(5, 'Sara Larsson', 'sara.larsson@email.com', 'Västerås');

--INSERT INTO Products (ProductID, ProductName, Price)
--VALUES 
--(1, 'Laptop', 12000.50),
--(2, 'Mobiltelefon', 7500.99),
--(3, 'Hörlurar', 1500.00),
--(4, 'Skärm', 2500.75),
--(5, 'Tangentbord', 800.00);

--INSERT INTO Orders (OrderID, CustomerID, ProductID, OrderDate)
--VALUES 
--(1, 1, 1, '2024-01-01'), 
--(2, 2, 2, '2024-01-02'), 
--(3, 3, 3, '2024-01-03'), 
--(4, 4, 4, '2024-01-04'), 
--(5, 5, 5, '2024-01-05'), 
--(6, 1, 3, '2024-01-06'), 
--(7, 2, 4, '2024-01-07'); 

--SELECT * FROM Customers;
--SELECT * FROM Products;
--SELECT * FROM Orders;

--select * from Customers
--where City in ('Stockholm', 'Göteborg')
--order by Name;

--select * from Products 
--where Price between 100 and 500;

--select * from Products 
--where Price between 1500 and 2500;

--select Orders.OrderID, Customers.Name as CustomerName, Products.Productname as ProductName, Orders.OrderDate
--from Orders
--join Customers on Orders.CustomerID = Customers.CustomerID
--join Products on Orders.ProductID = Products.ProductID;

--Fyllde på med lite orders för att kunna filtrera och få upp kunder med fler än 2 ordrar
--INSERT INTO Orders (OrderID, CustomerID, ProductID, OrderDate) VALUES
--(12, 1, 2, '2024-06-10'),
--(13, 1, 3, '2024-06-11'), 
--(14, 1, 1, '2024-06-12'), 

--(15, 2, 2, '2024-06-10'), 
--(16, 2, 2, '2024-06-11'), 
--(17, 2, 3, '2024-06-12'), 

--(18, 4, 1, '2024-06-12');

--select Customers.CustomerID, Customers.Name as CustomerName,
--count (Orders.OrderID) as NumberOfOrders
--from Customers
--join Orders on Customers.CustomerID = Orders.CustomerID
--group by Customers.CustomerID, Customers.Name
--having count (Orders.OrderID) > 2;

SELECT TOP 5 ProductID, Productname, Price
FROM Products
ORDER BY Price DESC;