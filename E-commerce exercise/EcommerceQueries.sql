--create table Users (
--UserID int primary key,
--Email varchar(100),
--Password varchar(100)
--);

--create table Products (
--ProductID int primary key,
--Name varchar(150),
--Description varchar(250),
--Price int
--);

--create table Rewiews (
--ReviewID int primary key,
--UserID int,
--ProductID int,
--Rating int,
--Comment varchar(250)
--foreign key (UserID) references Users(UserID),
--foreign key (ProductID) references Products(ProductID)
--);

--select * from Products;

--INSERT INTO Users (UserID, Email, Password)
--VALUES 
--(1, 'emil.emilsson@example.com', 'password123'),
--(2, 'janne.granath@example.com', 'securepass'),
--(3, 'anna.andersson@example.com', 'anna123'),
--(4, 'bob.hanson@example.com', 'hanson456');

--INSERT INTO Products (ProductID, Name, Description, Price)
--VALUES 
--(1, 'Wireless Mouse', 'A high-precision wireless mouse.', 25),
--(2, 'Gaming Keyboard', 'RGB backlit mechanical keyboard.', 75),
--(3, 'USB-C Charger', 'Fast-charging USB-C charger.', 15),
--(4, 'Bluetooth Speaker', 'Portable and waterproof speaker.', 50),
--(5, 'Noise Cancelling Headphones', 'Premium over-ear headphones.', 200);

--INSERT INTO Rewiews (ReviewID, UserID, ProductID, Rating, Comment)
--VALUES 
--(1, 1, 1, 5, 'Excellent mouse, very responsive!'),
--(2, 2, 1, 4, 'Good mouse, but a bit pricey.'),
--(3, 3, 2, 5, 'Amazing keyboard for gaming. So OOP!'),
--(4, 1, 3, 3, 'Decent charger, works as expected.'),
--(5, 4, 5, 5, 'The headphones are fantastic!'),
--(6, 2, 4, 4, 'Great speaker, easy to pair.'),
--(7, 3, 5, 5, 'Totally worth the money.'),
--(8, 4, 2, 3, 'The keyboard is okay but a bit noisy.');

--select * from Users;
--select * from Products;
--select * from Rewiews;

--select Rating, Comment, ProductID
--from Rewiews
--where UserID = 4;

--SELECT p.ProductID, p.Name, r.Rating
--FROM Products p
--INNER JOIN Rewiews r ON p.ProductID = r.ProductID
--WHERE r.Rating > 3;

--alter table Users
--add Name varchar(100);

--select * from Users;

--update users
--set Name ='Emil Emilsson' 
--where UserID = 1;

--update users
--set Name ='Janne Granath' 
--where UserID = 2;

--update users
--set Name ='Anna Andersson' 
--where UserID = 3;

--update users
--set Name ='Bon Hanson' 
--where UserID = 4;

--select * from Users;

--select * from Users
--where Name like '%n';

--select * from Rewiews
--where UserID between 2 and 4;