SELECT pro.product_name, SUM(ord.unit) AS unit 
FROM
  Products pro
  JOIN
  Orders ord
  ON pro.product_id = ord.product_id
WHERE DATE_FORMAT(ord.order_date,'%m%Y') = '022020' 
GROUP BY pro.product_name
HAVING SUM(ord.unit) >= 100
ORDER BY pro.product_id
;