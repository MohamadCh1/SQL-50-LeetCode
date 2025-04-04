# Write your MySQL query statement below
Select Distinct Logs1.num as ConsecutiveNums 
From (Select num, lead(num,1) over() num1, lead(num,2) over() num2 from Logs) as Logs1
where Logs1.num = Logs1.num1 AND Logs1.num1=Logs1.num2