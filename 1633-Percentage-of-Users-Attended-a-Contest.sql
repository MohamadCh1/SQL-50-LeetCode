# Write your MySQL query statement below
SELECT contest_id, ROUND(COUNT(user_id)/ (SELECT Count(*) from Users) *100,2)as percentage
from Register 
group by contest_id
order by percentage desc , contest_id asc