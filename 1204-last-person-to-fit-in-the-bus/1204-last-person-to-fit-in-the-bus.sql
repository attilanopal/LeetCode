WITH Total_weight AS (
  SELECT turn, person_id, person_name, weight, SUM(weight) OVER (ORDER BY turn) AS Total_weight
  FROM Queue
  ORDER BY turn
)

SELECT person_name FROM Total_weight
WHERE
  Total_weight IN (
    SELECT MAX(Total_weight) FROM total_weight
    WHERE Total_weight <= 1000
  )
;