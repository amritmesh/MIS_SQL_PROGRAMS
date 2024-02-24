/*==========================
DATABASE NORMALIZATION
==========================*/

-- First normal form (1NF)
-- All columns are atomic
-- Find the primary KEY
select count(*) from PLUMBINGSTORE;
select count(*) from (select distinct OrderID, ProductID, LastName from PLUMBINGSTORE);

DROP TABLE IF EXISTS PLUMBINGSTORE_1NF;
CREATE TABLE PLUMBINGSTORE_1NF (
	"OrderID"	INT,
	"FirstName"	TEXT,
	"LastName"	TEXT,
	"Address"	TEXT,
	"City"	TEXT,
	"State"	TEXT,
	"ZipCode"	TEXT,
	"PhoneNumber"	TEXT,
	"OrderDate"	TEXT,
	"Quantity"	INT,
	"ProductID"	INT,
	"ProductName"	TEXT,
	"UnitsInStock"	INT,
	"UnitsOnOrder"	INT,
	"UnitPrice"	REAL,
	PRIMARY KEY (OrderID, ProductID, LastName)
);
INSERT INTO PLUMBINGSTORE_1NF
	SELECT * FROM PLUMBINGSTORE;
	
-- Second normal form
/* What are the parts of the primary key?
1. OrderID
2. ProductID
3. LastName
4. OrderID, ProductID
5. OrderID, LastName
6. ProductID, LastName
7. OrderID, ProductID, LastName - Necessary
*/
-- 1. Non-primary key columns that depend on OrderID
select count(*) from (select DISTINCT OrderID from PLUMBINGSTORE);
select count(*) from (select DISTINCT OrderID, OrderDate from PLUMBINGSTORE);

DROP TABLE IF EXISTS ORDER_2NF;
CREATE TABLE ORDER_2NF (
	"OrderID"	INT,
	"OrderDate"	TEXT,
	PRIMARY KEY (OrderID)
);
INSERT INTO ORDER_2NF
	SELECT DISTINCT OrderID, OrderDate from PLUMBINGSTORE_1NF;