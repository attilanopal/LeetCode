SELECT si.user_id , 
       IFNULL(ROUND(SUM(CASE WHEN con.action = 'confirmed' THEN 1 ELSE 0 END)/COUNT(con.action),2),0) AS confirmation_rate
FROM
  Signups si
  LEFT JOIN
  Confirmations con
  ON
    si.user_id = con.user_id
GROUP BY si.user_id
ORDER BY si.user_id
;