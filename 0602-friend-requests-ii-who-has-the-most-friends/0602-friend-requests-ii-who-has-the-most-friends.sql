WITH cte AS (
(SELECT accepter_id AS id, COUNT(*) AS num
FROM RequestAccepted
GROUP BY id
ORDER BY num DESC
)
UNION ALL
(SELECT requester_id as id, COUNT(*) AS num
FROM RequestAccepted
GROUP BY id
ORDER BY num DESC)
)

SELECT id, SUM(num) AS num
FROM cte
GROUP BY id
ORDER BY num DESC
LIMIT 1
;