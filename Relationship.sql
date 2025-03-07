create database relationship;
use relationship;
CREATE TABLE Girlfriend (
    GF_ID INT PRIMARY KEY,
    GF_Name VARCHAR(50),
    Hobby VARCHAR(50),
    Instagram_ID VARCHAR(50)
);

INSERT INTO Girlfriend VALUES (1, 'Priya', 'Dancing', '@Priya_143');
INSERT INTO Girlfriend VALUES (2, 'Neha', 'Cooking', '@Neha_Love');
INSERT INTO Girlfriend VALUES (3, 'Anjali', 'Painting', '@Anjali_Queen');
INSERT INTO Girlfriend VALUES (4, 'Riya', 'Singing', '@Riya_Single');


CREATE TABLE Boyfriend (
    BF_ID INT PRIMARY KEY,
    BF_Name VARCHAR(50),
    GF_ID INT,
    Job VARCHAR(50),
    Instagram_ID VARCHAR(50),
    FOREIGN KEY (GF_ID) REFERENCES Girlfriend(GF_ID)
);

INSERT INTO Boyfriend VALUES (101, 'Rahul', 1, 'Engineer', '@Rahul_Coder');
INSERT INTO Boyfriend VALUES (102, 'Amit', 2, 'Doctor', '@Amit_MD');
INSERT INTO Boyfriend VALUES (103, 'Rohit', NULL, 'Businessman', '@Rohit_Boss');
INSERT INTO Boyfriend VALUES (104, 'Akash', 3, 'Teacher', '@Akash_Pro');


-- INNER JOIN (True Love 💕)

SELECT G.GF_Name, B.BF_Name, G.Hobby, B.Job
FROM Girlfriend G
INNER JOIN Boyfriend B
ON G.GF_ID = B.GF_ID;

-- LEFT JOIN (One-Sided Love 💔)
SELECT G.GF_Name, B.BF_Name, G.Hobby, B.Job
FROM Girlfriend G
LEFT JOIN Boyfriend B
ON G.GF_ID = B.GF_ID;

-- RIGHT JOIN (Friendzone 🥲)

SELECT G.GF_Name, B.BF_Name, G.Hobby, B.Job
FROM Girlfriend G
RIGHT JOIN Boyfriend B
ON G.GF_ID = B.GF_ID;


-- CROSS JOIN (Shaadi.com 🔥)

SELECT G.GF_Name, B.BF_Name
FROM Girlfriend G
CROSS JOIN Boyfriend B;

-- Self JOIN (Two Timing Waale 😏)

SELECT G1.GF_Name AS Girl1, G2.GF_Name AS Girl2
FROM Girlfriend G1
JOIN Girlfriend G2
ON G1.GF_ID <> G2.GF_ID;


