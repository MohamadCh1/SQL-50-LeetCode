# Write your MySQL query statement below
Select Distinct author_id as id 
From Views 
Where viewer_id = author_id 
order by id 