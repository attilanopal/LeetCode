-- Write your PostgreSQL query statement below

SELECT s.user_id, ROUND(AVG((CASE WHEN conf.action = 'confirmed' THEN 1 ELSE 0 END)),2) AS confirmation_rate FROM confirmations conf right join signups s USING(user_id)
GROUP BY user_id;