/* CHAPTER 10 RECAP */

-- select columns
select columnname from tablename;
select columnname1, columnname2, columnname3, from tablename;
select * from tablename; -- select all columns

-- select rows
select *
from tablename
where condition;
columnname = value (<=, >=, <, >, <>, !=)
conjunction: condition1 and condition2
disjunction:  condition1 or condition2
Note: AND (analogous to multiplication) is processed before or (analogous to addition)

columnname between value1 and value2 (equivalent to columnname >= value1 and columnname <= value2)
columnname in (value1, value2, value3) (equivalent to columnname = value1 or columnname = value3 or columnname = value3)

-- aggregation
select sum (numericcolumn) from tablename; --aggregation functions: avg, count, min, mix ...

select aggcolumn, sum(numericcolumn) from tablename
group by aggcolumn1, aggcolumn2
having sum(numericcolumn) > threshold;

-- sort
order by columnname1 asc/desc, columnname2 adc/desc;