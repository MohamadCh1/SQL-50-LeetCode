# Write your MySQL query statement below
SELECT E.name, B.bonus
from Employee as E left join Bonus as B
on E.empId=B.empId
where B.bonus Is null or B.bonus<1000