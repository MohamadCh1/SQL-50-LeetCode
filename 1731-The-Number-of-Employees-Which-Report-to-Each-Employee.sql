# Write your MySQL query statement below
Select E.employee_id,E1.name,E.reports_count,E.average_age
From(Select reports_to as employee_id, Count(name) as reports_count,ROUND(AVG(age),0) as average_age From Employees group by reports_to) as E inner join Employees as E1 
on E1.employee_id= E.employee_id
order by E.employee_id
