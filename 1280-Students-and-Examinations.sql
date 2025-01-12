# Write your MySQL query statement below
SELECT S.student_id,S.student_name,Su.subject_name, COALESCE(E.attended_classes, 0) AS attended_exams
From Students as S join Subjects as Su 
left JOIN (Select student_id,subject_name,COUNT(*) as attended_classes From Examinations group by student_id,subject_name) as E
on S.student_id=E.student_id and Su.subject_name=E.subject_name
Order by S.student_id, Su.subject_name
