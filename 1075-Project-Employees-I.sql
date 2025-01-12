# Write your MySQL query statement below
Select P.project_id, ROUND(SUM(E.experience_years)/COUNT(P.project_id),2) as average_years
from Project as P join Employee as E on E.employee_id = P.employee_id 
group by project_id