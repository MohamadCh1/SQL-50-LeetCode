# Write your MySQL query statement below
SELECT R.contest_id, ROUND(COUNT(R.user_id)/ (SELECT Count(*) from Users) *100,2)as percentage
from Register as R join Users as U on R.user_id=U.user_id
group by R.contest_id
order by percentage desc , R.contest_id asc