-----CREATE TABLE MyOrders(
------OrderID int,
------CustomerID int
------);

------CREATE TABLE Customers(
------CustomerID int,
------CustomerName varchar(255)
------);

----INSERT INTO MyOrders (OrderID, CustomerID)

------VALUES('10308','2');

------VALUES('10309','37');

------VALUES('10310','77');




------INSERT INTO Customers(CustomerID, CustomerName)

------VALUES('1','Alfred Futterkiste');

------VALUES('2','Ana Trujillo Emparedados y helados');

------VALUES('3','Antonio Moreno Taqueia');


----SELECT COUNT(PersonID)
----FROM Persons;

----SELECT AVG(PersonID)
----FROM Persons;

----SELECT SUM(PersonID)
----FROM Persons;

----SELECT * FROM Persons
----WHERE FirstName LIKE 'a%';


----SELECT * FROM Persons
----WHERE FirstName LIKE '%a';

----SELECT * FROM Persons
----WHERE FirstName LIKE '%a%'

----SELECT * FROM Persons
----WHERE FirstName LIKE '_r%';

----SELECT * FROM Persons
----WHERE FirstName LIKE 'a__%';

----SELECT * FROM Persons
----WHERE FirstName LIKE 'a%o';



----SELECT * FROM Persons
----WHERE FirstName NOT LIKE 'a%';

----SELECT MyOrders.OrderID, Customers.CustomerName
----FROM MyOrders
----INNER JOIN Customers ON MyOrders.CustomerID = Customers.CustomerID;

----SELECT Customers.CustomerName , MyOrders.OrderID
----FROM Customers LEFT JOIN MyOrders ON Customers.CustomerID = MyOrders.CustomerID;

----SELECT MyOrders.OrderID , Customers.CustomerName
----FROM MyOrders RIGHT JOIN Customers ON Customers.CustomerID = MyOrders.CustomerID;

--SELECT Customers.CustomerName , MyOrders.OrderID
--FROM Customers FULL OUTER JOIN MyOrders ON Customers.CustomerID = MyOrders.CustomerID;

--SELECT CustomerID FROM MyOrders
--UNION
--SELECT CustomerID FROM Customers;


----union all

--SELECT CustomerID FROM MyOrders

--UNION ALL

--SELECT CustomerID FROM Customers;



----union
--SELECT CustomerID, CustomerName FROM Customers

--WHERE CustomerID = '2'

--UNION

--SELECT CustomerID, OrderID FROM MyOrders

--WHERE CustomerID = '2';


----// union all
--SELECT CustomerID, CustomerName FROM Customers

--WHERE CustomerID = '2'

--UNION ALL

--SELECT CustomerID, OrderID FROM MyOrders

--WHERE CustomerID = '2';

--SELECT 'CustomerName' AS Type, CustomerID
--FROM Customers
--UNION
--SELECT 'CustomerID' , OrderID
--FROM MyOrders;


--SELECT CustomerName
--FROM Customers
--WHERE EXISTS (SELECT OrderID FROM MyOrders WHERE MyOrders.CustomerID = Customers.CustomerID);

--BACKUP DATABASE SAMPLE_DB
--TO DISK = '"D:\SQL-query-2\"';

--ALTER TABLE MyOrders
--RENAME COLUMN OrderID to MyOrderID;

--ALTER TABLE MyOrders
--ALTER COLUMN OrderID int;

--ALTER TABLE MyOrders
--ALTER COLUMN OrderID int NOT NULL;

--SELECT A.CustomerName AS CustomerName1 , B.CustomerName AS CustomerName2
--FROM Customers A, Customers B
--WHERE A.CustomerID <> B.CustomerID;

SELECT 'FirstName' AS FormerName, LastName
FROM Persons
UNION
SELECT 'CustomerID' , CustomerName
FROM Customers;


SELECT COUNT(CustomerID) , CustomerName
FROM Customers
GROUP BY CustomerName;

SELECT COUNT(CustomerID) , CustomerName
FROM Customers
GROUP BY CustomerName
ORDER BY COUNT(CustomerID) DESC;

SELECT COUNT(CustomerID) , CustomerName
FROM Customers
GROUP BY CustomerName
HAVING COUNT(CustomerID) > 0;

SELECT CustomerName
FROM Customers
WHERE EXISTS (SELECT CustomerID FROM MyOrders WHERE MyOrders.CustomerID = Customers.CustomerID AND CustomerID > 1);

