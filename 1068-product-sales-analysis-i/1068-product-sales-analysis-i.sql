-- Write your PostgreSQL query statement below
SELECT product_name, year, price FROM SALES
JOIN Product USING(product_id);