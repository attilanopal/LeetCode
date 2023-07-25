SELECT us.product_id, ROUND((SUM(pr.price*us.units)/SUM(us.units)),2) AS average_price 
FROM
  Prices pr
  JOIN
  UnitsSold us
  ON pr.product_id = us.product_id AND
  us.purchase_date BETWEEN pr.start_date AND pr.end_date
GROUP BY us.product_id
;