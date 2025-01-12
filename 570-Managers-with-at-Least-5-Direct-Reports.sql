# Write your MySQL query statement below
SELECT a.name 
FROM Employee as a join Employee as b
Where a.id=b.managerId
group by a.id
having COUNT(*)>=5


