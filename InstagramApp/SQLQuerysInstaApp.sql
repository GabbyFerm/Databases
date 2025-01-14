--CREATE TABLE Users (
--    UserId INT IDENTITY PRIMARY KEY,
--    Username NVARCHAR(50) NOT NULL UNIQUE,
--    FullName NVARCHAR(100) NOT NULL,
--    Email NVARCHAR(100) NOT NULL UNIQUE,
--    PasswordHash NVARCHAR(256) NOT NULL,
--    CreatedAt DATETIME DEFAULT GETDATE()
--);

--CREATE TABLE Posts (
--    PostId INT IDENTITY PRIMARY KEY,
--    UserId INT NOT NULL,
--    Content NVARCHAR(MAX) NOT NULL,
--    CreatedAt DATETIME DEFAULT GETDATE(),
--    FOREIGN KEY (UserId) REFERENCES Users(UserId) ON DELETE CASCADE -- när en user tas bort, tar databasen automatiskt bort alla poster som den UserId har
--);

-- Kör dessa två när users & posts är skapade pg av foreign key
--CREATE TABLE Likes (
--    LikeId INT IDENTITY PRIMARY KEY,
--    UserId INT NOT NULL,
--    PostId INT NOT NULL,
--    LikedAt DATETIME DEFAULT GETDATE(),
--    FOREIGN KEY (UserId) REFERENCES Users(UserId),
--    FOREIGN KEY (PostId) REFERENCES Posts(PostId),
--    UNIQUE(UserId, PostId)
--);

--CREATE TABLE Comments (
--    CommentId INT IDENTITY PRIMARY KEY,
--    UserId INT NOT NULL,
--    PostId INT NOT NULL,
--    Content NVARCHAR(MAX) NOT NULL,
--    CommentedAt DATETIME DEFAULT GETDATE(),
--    FOREIGN KEY (UserId) REFERENCES Users(UserId),
--    FOREIGN KEY (PostId) REFERENCES Posts(PostId)
--);

-- fyll på med dummy data
--INSERT INTO Users (Username, FullName, Email, PasswordHash)
--VALUES 
--('alice123', 'Alice Johnson', 'alice@example.com', 'pass1'),
--('bob_the_builder', 'Bob Hanson', 'bob@example.com', 'pass2'),
--('charlie_chap', 'Charlie Chaplin', 'charlie@example.com', 'pass3'),
--('diana_prince', 'Diana Prince', 'diana@example.com', 'pass4');

--INSERT INTO Posts (UserId, Content)
--VALUES 
--(1, 'Alice sharing her first post about her new cat!'),
--(2, 'Bob sharing some cool DIY projects.'),
--(3, 'Charlie shares his thoughts on silent films.'),
--(1, 'Alice sharing her second post about her weekend trip.'),
--(4, 'Diana sharing her workout routine.');

--INSERT INTO Likes (UserId, PostId)
--VALUES 
--(2, 1), -- Bob likes Alice's first post
--(3, 1), -- Charlie likes Alice's first post
--(1, 2), -- Alice likes Bob's post
--(4, 2), -- Diana likes Bob's post
--(3, 4), -- Charlie likes Alice's second post
--(2, 5); -- Bob likes Diana's post

--INSERT INTO Comments (UserId, PostId, Content)
--VALUES 
--(2, 1, 'Nice cat, Alice!'),
--(3, 1, 'Adorable!'),
--(1, 2, 'Love these DIY tips, Bob!'),
--(4, 2, 'So creative!'),
--(3, 4, 'Looks like a fun trip!'),
--(2, 5, 'Great routine, Diana!');

--SELECT * FROM Users;

--SELECT * FROM Posts;

--SELECT * FROM Likes;

--SELECT * FROM Comments;

--Visa alla poser från en user
--SELECT * FROM Posts
--WHERE UserId = 1;

--Visa alla users som gillat en specifik post med själva posten
--SELECT 
--    Likes.PostId,
--    Posts.Content AS PostContent,
--    Users.Username AS LikedBy,
--    Likes.LikedAt
--FROM 
--    Likes
--JOIN 
--    Posts ON Likes.PostId = Posts.PostId
--JOIN 
--    Users ON Likes.UserId = Users.UserId
--WHERE 
--    Posts.PostId = 1; 

--Kolla hur många likes varje post har
--SELECT 
--    Posts.PostId,
--    Posts.Content AS PostContent,
--    COUNT(Likes.LikeId) AS TotalLikes
--FROM 
--    Posts
--LEFT JOIN 
--    Likes ON Posts.PostId = Likes.PostId
--GROUP BY 
--    Posts.PostId, Posts.Content;

--Visa alla Comments på en specifik post
--SELECT * FROM Comments
--WHERE PostId = 1;

--Hitta alla poster utan likes
--SELECT 
--    Posts.PostId,
--    Posts.Content AS PostContent,
--    Users.Username AS Author,
--    Posts.CreatedAt
--FROM 
--    Posts
--JOIN 
--    Users ON Posts.UserId = Users.UserId
--WHERE 
--    Posts.PostId NOT IN (SELECT PostId FROM Likes);