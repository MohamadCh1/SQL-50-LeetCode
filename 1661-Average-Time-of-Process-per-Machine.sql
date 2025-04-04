# Write your MySQL query statement below
select a1.machine_id,ROUND(AVG(a1.timestamp-a2.timestamp),3) as processing_time
from Activity a1 join Activity a2
on a1.process_id=a2.process_id and a1.machine_id=a2.machine_id
and a1.activity_type="end" and a2.activity_type="start"
group by machine_id