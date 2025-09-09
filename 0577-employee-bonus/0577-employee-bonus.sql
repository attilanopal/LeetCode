-- Write your PostgreSQL query statement below
SELECT name, bonus.bonus FROM EMPLOYEE
LEFT JOIN BONUS using(empId)
WHERE bonus.bonus < 1000 OR bonus.bonus IS NULL;