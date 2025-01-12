# Write your MySQL query statement below
Select customer_id,
    Sum(case
            when visit_id in (select visit_id from Transactions) then 0
            else 1
        end) as count_no_trans
from Visits
group by customer_id
HAVING count_no_trans != 0
order by count_no_trans
