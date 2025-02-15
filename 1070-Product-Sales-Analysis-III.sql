# Write your MySQL query statement below
Select s1.product_id,s1.year as first_year,s1.quantity,s1.price
from Sales as s1 
inner join (Select product_id,MIN(year) as year from sales group by product_id) as s2
on s1.year=s2.year AND s1.product_id=s2.product_id