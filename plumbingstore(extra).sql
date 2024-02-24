SELECT * 
from CUSTOMER, orders, ORDERDETAIL, PRODUCT
where CUSTOMER.CustomerID = ORDERS.CustomerID and orders.ORDERID = ORDERDETAIL.OrderID 
	and ORDERDETAIL.ProductID = PRODUCT.productID;
	
select * 
from CUSTOMER inner join orders on CUSTOMER.CustomerID = ORDERS.CustomerID
	inner  join ORDERDETAIL on orders.OrderID = ORDERDETAIL.OrderID
	inner join PRODUCT on ORDERDETAIL.ProductID = PRODUCT.ProductID;