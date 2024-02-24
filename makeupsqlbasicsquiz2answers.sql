-- Which five products are sold the most?
select ProductName,  sum(quantity)
from PLUMBINGSTORE
group by ProductName
order by sum(quantity) DESC
limit 5;

-- What are the products that have not been bought from the store?
select ProductName,  sum(quantity)
from PLUMBINGSTORE
group by ProductName
having sum(quantity) = NULL;

-- What are the top 5 well-stocked products of the store (including in-store and on-order units)?
select ProductName,  UnitsInStock, UnitsOnOrder
from PLUMBINGSTORE
group by ProductName
order by (UnitsInStock + UnitsOnOrder) DESC
limit 5;

-- Which products have an inventory value of over 500 (inventory includes in-store and on-order units)? Show both the ProductName and InventoryValue.
select ProductName, (UnitsInStock + UnitsOnOrder) as InventoryValue
from PLUMBINGSTORE
where InventoryValue > 500
group by ProductName
order by InventoryValue;

-- Who are the top five customers of the store (i.e., in terms of revenue)?
select FirstName, LastName, sum(UnitPrice * Quantity) as Revenue
from PLUMBINGSTORE
group by FirstName, LastName
order by Revenue DESC
limit 5;