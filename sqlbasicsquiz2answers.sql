-- Which five products generated the least revenue?
select ProductName, sum(UnitPrice * Quantity) as revenue
from PRODUCT inner join ORDERDETAIL on PRODUCT.ProductID = ORDERDETAIL.ProductID
group by ProductName
order by revenue ASC
limit 5;

-- include products that have not been bought
select ProductName, sum(UnitPrice * Quantity) as revenue
from PRODUCT left join ORDERDETAIL on PRODUCT.ProductID = ORDERDETAIL.ProductID
group by ProductName
order by revenue ASC
limit 5;

select *
from PRODUCT inner join ORDERDETAIL on PRODUCT.ProductID = ORDERDETAIL.ProductID

-- Among the products that have been sold the least, which have more than 10 units in stock?
select ProductName, sum(quantity), UnitsInStock
from PRODUCT inner join ORDERDETAIL on PRODUCT.ProductID = ORDERDETAIL.ProductID
where UnitsInStock >= 10
group by ProductName
order by sum(quantity);

-- step by step
select * from
(select ProductName, sum(quantity), UnitsInStock
from PRODUCT inner join ORDERDETAIL on PRODUCT.ProductID = ORDERDETAIL.ProductID
group by ProductName
order by sum(quantity)
limit 4)
where UnitsInStock >= 10;

-- Who are the (unique) customers that have placed at least two orders with the store in alphabetical order of last name?
select FirstName, LastName, count(orderID)
from CUSTOMER inner join ORDERS on CUSTOMER.CustomerID = ORDERS.CustomerID
group by FirstName, LastName
having count(orderid) >= 2
order by LastName;

-- How many customers placed at least one order with the store? 
select count(*) from
(select FirstName, LastName, count(orderID)
from CUSTOMER inner join ORDERS on CUSTOMER.CustomerID = ORDERS.CustomerID
group by FirstName, LastName
having count(orderid) >= 1
order by LastName);

-- another approach
select count(DISTINCT CustomerID) from orders;

-- Which products have a unit price between 49.95 and 99.95 (but exclusive of the limits)? Show both the ProductName and UnitPrice.
select ProductName, UnitPrice 
from PRODUCT
where UnitPrice > 49.95 and UnitPrice < 99.95;