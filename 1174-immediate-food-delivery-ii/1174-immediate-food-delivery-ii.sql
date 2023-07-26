SELECT ROUND(COUNT(de.customer_id) / (SELECT COUNT(DISTINCT customer_id) FROM Delivery) * 100,2) AS immediate_percentage
FROM
  Delivery de
  JOIN
  (
    SELECT customer_id, MIN(order_date) AS first_order
    FROM
      Delivery
    GROUP BY customer_id
  ) fo
  ON de.customer_id = fo.customer_id AND fo.first_order = de.customer_pref_delivery_date
;