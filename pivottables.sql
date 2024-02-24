-- Sales by region
select region, sum (revenue)
from salessheet
group by region;

-- Top 10 categories
select category , sum(revenue) as SumOfRevenue
from salessheet
group by Category
order by sum(revenue) DESC
limit 10;

-- Calculations
select Category, sum(revenue), count(*), 
	printf("$%.2f", avg(unitprice)) as AvgOfUnitPrice, sum(quantity)
from salessheet
group by category
order by avg(unitprice) DESC;

-- Pct of total
select sum(revenue) from salessheet;
SELECT Category, sum(revenue), 
	printf("%.2f%%", 100 * sum(revenue)/(select sum(revenue) from salessheet)) as PctOfGrandTotal
from salessheet
group by Category;

-- Category by Salesperson
select category, Salesperson, sum(revenue), 
	sum(revenue) / (select sum(revenue) from salessheet) as PctOfGrandTotal
	from salessheet
	group by Salesperson, Category
	order by Category, sum(revenue) DESC; 
	
-- Category by Salesperson (sort by category then Salesperson in descending revenue)
select t.category, Salesperson, sum(revenue), 
	sum(revenue) / (select sum(revenue) from salessheet) as PctOfGrandTotal
	from salessheet, (select category , sum(revenue) as SumOfRevenue
		from salessheet
		group by salessheet.Category
		order by sum(revenue) DESC) t
	WHERE salessheet.Category = t.Category
	group by Salesperson, t.Category
	order by t.SumOfRevenue DESC, sum(revenue) DESC; 
	
-- Cartesian join
SELECT *
from salessheet, (select category , sum(revenue) as SumOfRevenue
		from salessheet
		group by Category
		order by sum(revenue) DESC) t
	WHERE salessheet.Category = t.Category;
	
-- Inner join
SELECT *
from salessheet inner join(select category , sum(revenue) as SumOfRevenue
		from salessheet
		group by Category
		order by sum(revenue) DESC) t
	on salessheet.Category = t.Category;
	
-- step by step
create table t as
select category , sum(revenue) as SumOfRevenue
		from salessheet
		group by salessheet.Category
		order by sum(revenue) DESC;

select t.category, Salesperson, sum(revenue), 
	sum(revenue) / (select sum(revenue) from salessheet) as PctOfGrandTotal
	from salessheet, t
	WHERE salessheet.Category = t.Category
	group by Salesperson, t.Category
	order by t.SumOfRevenue DESC, sum(revenue) DESC;
	
-- Cross-tab
select category,
	sum(case when salesperson = 'Andrew Cencini' then Revenue else 0.0 end) / (select sum(revenue) from salessheet) as AndrewCencini,
	sum(case when salesperson = 'Anne Larsen' then Revenue else 0.0 end) / (select sum(revenue) from salessheet) as AnneLarsen
from salessheet
group by Category;