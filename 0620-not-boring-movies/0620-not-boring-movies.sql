-- Write your PostgreSQL query statement below
SELECT id, movie, description, rating FROM CINEMA
WHERE ID % 2 != 0 AND description NOT LIKE '%boring%'
ORDER BY rating DESC