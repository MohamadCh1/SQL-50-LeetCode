# Write your MySQL query statement below
select MAX(n.num) as num
from (Select  num from MyNumbers group by num having COUNT(num)=1) as n
