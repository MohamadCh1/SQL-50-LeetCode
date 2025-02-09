# Write your MySQL query statement below
Select activity_date as day,Count(distinct user_id) as active_users
From Activity 
where activity_date between DATE_SUB('2019-07-27', INTERVAL 29 DAY) and '2019/07/27' 
group by activity_date 