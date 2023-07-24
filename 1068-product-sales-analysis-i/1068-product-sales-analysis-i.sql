SELECT pr.product_name, sal.year, sal.price FROM Sales sal, Product pr
WHERE
  sal.product_id = pr.product_id
;