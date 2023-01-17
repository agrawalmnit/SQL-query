SELECT * INTO CustomersBackup2023

FROM Customers;


SELECT * INTO CustomerBackup2023 IN 'Backup.mdb'

FROM Customers;


SELECT CustomerName, CustomerID INTO CustomesBackup2023

FROM Customers;




SELECT * INTO CustomersName

FROM Customers

WHERE CustomerID = '1';




SELECT Customers.CustomerName, MyOrders.ORderID

INTO CustomerOrderBackup2023

FROM Customers

LEFT JOIN MyOrders ON Customers.CustomerID = MyOrders.CustomerID;





SELECT CustomerName, CustomerID,

CASE 

WHEN CustomerID = 0 THEN 'THE CUSTOMER ID IS 0'

WHEN CustomerID = 1 THEN 'the customer id is 1'

ELSE 'the customer id is positive'

END AS CustomerIdText

FROM Customers;





SELECT CustomerName, CustomerID

FROM Customers

ORDER BY

(CASE

WHEN CustomerID IS NULL THEN CustomerName

ELSE CustomerID

END);




CREATE PROCEDURE SelectAllCustomers @CustomerID nvarchar(30)

CREATE PROCEDURE SelectAllCustomers @CustomerID nvarchar(30)
AS
SELECT * FROM Customers WHERE CustomerID = @CustomerID
GO;

ALTER TABLE Persons
ALTER COLUMN FirstName varchar(255);

ALTER TABLE Persons
ADD CONSTRAINT df_FirstName 
DEFAULT 'happiness' FOR FirstName;


ALTER TABLE Persons
ALTER COLUMN FirstName DROP DEFAULT;

CREATE INDEX index1
ON Customers(CustomerName, CustomerID);

CREATE UNIQUE INDEX index2
ON Customers(CustomerName, CustomerID);

CREATE INDEX idx_CustomerName
ON Customers (CustomerName);

DROP INDEX Customers.idx_CustomerName;

CREATE TABLE Customer(
CustomerID int IDENTITY(1,1) PRIMARY KEY,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Age int
);

INSERT INTO Customer (FirstName,LastName)
VALUES('LARS','MORSEN');

CREATE VIEW [LARS Customer] AS
SELECT FirstName, LastName
FROM Customer
WHERE FirstName = 'LARS';

SELECT * FROM [LARS Customer];

SELECT TOP 1 * FROM Customers;

SELECT * FROM Customers
WHERE NOT CustomerID = '1';

SELECT * FROM Customers
WHERE NOT CustomerID = '2';

SELECT * FROM Customers
WHERE NOT CustomerID = '3';

SELECT * FROM Customers
WHERE NOT CustomerID = '1' AND NOT CustomerID = '2';


SELECT * FROM Customers
WHERE NOT CustomerID = '1' OR NOT CustomerID = '2';

SELECT * FROM Customers
WHERE CustomerID = '1';

SELECT * FROM Customers
WHERE CustomerID = '1' OR CustomerID = '2';

CREATE TABLE TABLES(
TablesName varchar(255),
TablesID int
);

INSERT INTO TABLES(TablesID,TablesName)
--VALUES('1','a');
VALUES('2','b');

TRUNCATE TABLE TABLES;

SELECT * FROM TABLES;



SELECT ASCII(CustomerName) AS NumCodeOfFirstChar

FROM Customers;



