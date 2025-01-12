# Write your MySQL query statement below
Select query_name,
ROUND(AVG(rating/position),2) as quality,
ROUND(SUM(
    case
    When rating<3 then 1
    else 0
    end
)/Count(query_name)*100,2) as poor_query_percentage
from Queries 
group by query_name
