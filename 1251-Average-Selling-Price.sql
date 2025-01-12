# Write your MySQL query statement below
Select P.product_id,COALESCE(ROUND(SUM(P.price * U.units)/SUM(U.units),2),0) as average_price
from Prices as P left join UnitsSold as U 
on U.purchase_date Between P.start_date and P.end_date and P.product_id=U.product_id
group by P.product_id