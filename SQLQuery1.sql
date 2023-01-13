
--CREATE DATABASE SAMPLE_DB;

--CREATE DATABASE SAMPLE_DB;

--CREATE TABLE Persons(
--PersonID int,
--FirstName varchar(255),
--LastName varchar

--CREATE TABLE Persons (

--PersonID int,
--LastName varchar(255),
--FirstName varchar(255),
--Address varchar(255),
--City varchar(255)
--);

--ALTER TABLE Persons
--ADD Email varchar(255);


--CREATE TABLE Employees(
--PersonID int);

--DROP TABLE Employees;
--SELECT * FROM Persons

--ALTER TABLE Persons
--ALTER COLUMN City int NOT NULL;

--ALTER TABLE Persons
--ADD UNIQUE (Address);

--ALTER TABLE Persons
--ADD PRIMARY KEY (City);

--CREATE TABLE Orders(
--OrderID int NOT NULL PRIMARY KEY,
--OrderNumber int NOT NULL,
--PersonID int FOREIGN KEY REFERENCES Persons(City)
--);

--SELECT * FROM Orders

--ALTER TABLE Persons
--ADD CHECK (PersonID>=18);

--ALTER TABLE Persons
--ADD CONSTRAINT CHK_PersonID CHECK (PersonID>=18);

--ALTER TABLE Persons

--DROP CONSTRAINT CHK_PersonID;

--INSERT INTO Persons (PersonID, LastName, FirstName,Address, City)
--VALUES ('18', 'markets', 'white clover', '1');
--VALUES('19','wilman','KALA','jaipur','2');
--VALUES('20','CARDINAL','WOLSKI','SEATTLE','3');
--VALUES('21','TOM B.','ERICHSON','STAVANGER','4');

--SELECT DISTINCT FirstName, LastName
--FROM Persons; 

--SELECT * FROM Persons
--WHERE FirstName = 'KALA';

--SELECT * FROM Persons
--WHERE FirstName = 'white clover' OR FirstName = 'WOLSKI';

--SELECT FirstName, LastName, City
--FROM Persons
--WHERE Address IS NULL;

--UPDATE Persons
--SET FirstName = 'ALFRED SCHMIDT' , LastName = 'FRANKFURT'
--WHERE City = 1;

--DELETE FROM Persons WHERE City = '1';

--SELECT TOP 1 * FROM Persons;

--SELECT MIN(PersonID) AS SmallestCity
--FROM Persons;

--SELECT * FROM Persons
--WHERE FirstName LIKE '%A';

--SELECT * FROM Persons
--WHERE City LIKE '[!ak]';


--SELECT * FROM Persons
--WHERE Address NOT IN ('SEATTLE');

--SELECT FirstName
--FROM Persons
--WHERE City BETWEEN 1 AND 3;

--CREATE TABLE a (
--PersonID int,
--LastName varchar(255),
--FirstName varchar(255),
--Address varchar(255),
--City varchar(255),
--State varchar(255),
--Country varchar(255),
--favourites varchar(255));


--CREATE TABLE b (
--PersonID int,
--LastName varchar(255),
--FirstName varchar(255),
--Address varchar(255),
--City varchar(255),
--State varchar(255),
--Country varchar(255),
--favourites varchar(255));

--SELECT FirstName AS First_Name , LastName AS Last_Name
--FROM Persons;

--SELECT * FROM Persons

--SELECT FirstName + LastName AS Name
--FROM Persons;

--SELECT AVG(PersonID)
--FROM Persons;

--SELECT SUM(PersonID)
--FROM Persons;

--SELECT * FROM Persons
--WHERE FirstName LIKE 'a%';

--SELECT * FROM Persons
--WHERE FirstName LIKE '%a';

--SELECT * FROM Persons
--WHERE FirstName LIKE '_r%';

--SELECT * FROM Persons
--WHERE FirstName LIKE 'A%O';

--SELECT COUNT(PersonID) , Address
--FROM Persons
--GROUP BY Address;

