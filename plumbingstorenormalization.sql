/*==========================
DATABASE NORMALIZATION
===========================*/
-- First normal form (1NF)
-- All columns are atomic
-- Find the primary KEY

drop table if exists PLUMBINGSTORE_1NF;
CREATE TABLE PLUMBINGSTORE_1NF (
  OrderID INTEGER,
  FirstName TEXT,
  LastName TEXT,
  Address TEXT,
  City TEXT,
  State TEXT,
  ZipCode TEXT,
  PhoneNumber TEXT,
  OrderDate DATE,
  Quantity INTEGER,
  ProductID INTEGER,
  ProductName TEXT,
  UnitsInStock INTEGER,
  UnitsOnOrder INTEGER,
  UnitPrice REAL,
  primary key (OrderID, ProductID)
);
insert into PLUMBINGSTORE_1NF
	select * from PLUMBINGSTORE0NF;
	
-- Second normal form (2NF) Remove partial dependency
/* What are the parts of the primary key?
	1. OrderID
	2. ProductID
	3. OrderID, ProductID (NECESSARY)
	Find non-primary-key columns that depend on each part.
*/
drop table if exists ORDERDETAIL_2NF;
-- 1. OrderID
drop table if exists ORDERS_2NF;
CREATE TABLE ORDERS_2NF (
  OrderID INTEGER,
  FirstName TEXT,
  LastName TEXT,
  Address TEXT,
  City TEXT,
  State TEXT,
  ZipCode TEXT,
  PhoneNumber TEXT,
  OrderDate DATE,
  primary key (OrderID)
);
INSERT INTO ORDERS_2NF
	SELECT DISTINCT OrderID, FirstName, LastName, Address, City, State, ZipCode, PhoneNumber, OrderDate
	from PLUMBINGSTORE_1NF;
	
-- 2. ProductID
drop table if exists PRODUCT_2NF;
CREATE TABLE PRODUCT_2NF (
  ProductID INTEGER,
  ProductName TEXT,
  UnitsInStock INTEGER,
  UnitsOnOrder INTEGER,
  UnitPrice REAL,
  primary key (ProductID)
);
INSERT INTO PRODUCT_2NF
	SELECT DISTINCT ProductID, ProductName, UnitsInStock, UnitsOnOrder, UnitPrice
	FROM PLUMBINGSTORE_1NF;
	
-- 3. OrderID, ProductID (NECESSARY) put the remaining columns here
CREATE TABLE ORDERDETAIL_2NF (
  OrderID INTEGER,
  Quantity INTEGER,
  ProductID INTEGER,
  primary key (OrderID, ProductID),
  FOREIGN key (OrderID) REFERENCES ORDERS_2NF (OrderID),
  FOREIGN KEY (ProductID) REFERENCES PRODUCT_2NF (ProductID)
);
INSERT INTO ORDERDETAIL_2NF
	SELECT DISTINCT OrderID, Quantity, ProductID
	FROM PLUMBINGSTORE_1NF;
	
-- Third normal form (3NF) Remove transitive dependencies
drop table if exists ORDERDETAIL_3NF;
drop table if exists ORDERS_3NF;
drop table if exists CUSTOMER_3NF;
drop table if exists ZIP_3NF;
drop table if exists PRODUCT_3NF;

CREATE TABLE ZIP_3NF (
  City TEXT,
  State TEXT,
  ZipCode TEXT,
  primary key (ZipCode)
);
INSERT INTO ZIP_3NF
	SELECT DISTINCT City, State, ZipCode
	from ORDERS_2NF;

drop table if exists CUSTOMER_3NF;
CREATE TABLE CUSTOMER_3NF (
  CustomerID INTEGER PRIMARY KEY,
  FirstName TEXT,
  LastName TEXT,
  Address TEXT,
  ZipCode TEXT,
  PhoneNumber TEXT,
  FOREIGN KEY (ZipCode) REFERENCES ZIP_3NF (ZipCode)
);
INSERT INTO CUSTOMER_3NF (FirstName, LastName, Address, ZipCode, PhoneNumber)
	SELECT DISTINCT FirstName, LastName, Address, ZipCode, PhoneNumber
	from ORDERS_2NF;

drop table if exists ORDERS_3NF;
CREATE TABLE ORDERS_3NF (
  OrderID INTEGER,
  CustomerID INT,
  OrderDate DATE,
  primary key (OrderID)
  FOREIGN KEY (CustomerID) REFERENCES CUSTOMER_3NF (CustomerID)
);
INSERT INTO ORDERS_3NF
	SELECT DISTINCT OrderID, CustomerID, OrderDate
	from ORDERS_2NF inner join CUSTOMER_3NF on ORDERS_2NF.FirstName = CUSTOMER_3NF.FirstName AND
	ORDERS_2NF.LastName = CUSTOMER_3NF.LastName;

drop table if exists PRODUCT_3NF;
CREATE TABLE PRODUCT_3NF (
  ProductID INTEGER,
  ProductName TEXT,
  UnitsInStock INTEGER,
  UnitsOnOrder INTEGER,
  UnitPrice REAL,
  primary key (ProductID)
);
INSERT INTO PRODUCT_3NF
	SELECT DISTINCT ProductID, ProductName, UnitsInStock, UnitsOnOrder, UnitPrice
	FROM PRODUCT_2NF;
	
CREATE TABLE ORDERDETAIL_3NF (
  OrderID INTEGER,
  Quantity INTEGER,
  ProductID INTEGER,
  primary key (OrderID, ProductID),
  FOREIGN key (OrderID) REFERENCES ORDERS_3NF (OrderID),
  FOREIGN KEY (ProductID) REFERENCES PRODUCT_3NF (ProductID)
);
INSERT INTO ORDERDETAIL_3NF
	SELECT DISTINCT OrderID, Quantity, ProductID
	FROM ORDERDETAIL_2NF;