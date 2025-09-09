-- Write your PostgreSQL query statement below
SELECT A.id FROM Weather A
JOIN WEATHER B ON A.recordDate = B.recordDate + 1
WHERE B.temperature < A.temperature;