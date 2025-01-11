# Write your MySQL query statement below
Select Distinct a.id
from Weather a join Weather a1
on a.temperature > a1.temperature 
WHERE a.recordDate = a1.recordDate + INTERVAL 1 DAY


