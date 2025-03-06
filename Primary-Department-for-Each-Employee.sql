SELECT 
    E1.employee_id, 
    COALESCE(E2.department_id, E1.department_id) AS department_id
FROM 
    (SELECT employee_id, MIN(department_id) AS department_id 
     FROM Employee 
     GROUP BY employee_id) AS E1
LEFT JOIN 
    (SELECT employee_id, department_id 
     FROM Employee 
     WHERE primary_flag = 'Y') AS E2
ON E1.employee_id = E2.employee_id;
