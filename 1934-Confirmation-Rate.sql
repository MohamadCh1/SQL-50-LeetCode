# Write your MySQL query statement below
SELECT S.user_id, 
ROUND(
        CASE 
            WHEN COUNT(C.user_id) = 0 THEN 0
            ELSE SUM(CASE WHEN C.action = "confirmed" THEN 1 ELSE 0 END) / COUNT(C.user_id)
        END, 
        2
    ) AS confirmation_rate
FROM Signups as S left join Confirmations as C on C.user_id=S.user_id
GROUP BY S.user_id
