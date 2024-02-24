/* This is 
a multi-line 
comment 
*/
-- This is an end-of-line comment
SELECT *  from CUSTOMER;

SELECT OrderDate FROM ORDERS;

SELECT FirstName, LastName, OrderDate
FROM   CUSTOMER INNER JOIN ORDERS
          ON CUSTOMER.CustomerID = ORDERS.CustomerID
WHERE  OrderDate >= '2013-04-28';

SELECT FirstName, LastName
FROM   CUSTOMER
WHERE  City='Hamilton' AND State='NJ';