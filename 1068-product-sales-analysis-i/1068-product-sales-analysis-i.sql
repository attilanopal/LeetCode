SELECT pr.product_name, sal.year, sal.price FROM Sales sal
JOIN Product pr ON sal.product_id = pr.product_id
;