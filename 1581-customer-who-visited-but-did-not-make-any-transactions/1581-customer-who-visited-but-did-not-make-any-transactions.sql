-- Write your PostgreSQL query statement below
SELECT customer_id, COUNT(*) AS count_no_trans from Visits 
LEFT JOIN Transactions USING(visit_id)
WHERE transaction_id IS NULL
GROUP BY customer_id;