# Write your MySQL query statement below
SELECT sal.name FROM salesperson sal
WHERE sal.sales_id NOT IN 
(
    SELECT ord.sales_id FROM Orders ord
    LEFT JOIN Company com ON ord.com_id = com.com_id
    WHERE com.name = 'RED'
) ;