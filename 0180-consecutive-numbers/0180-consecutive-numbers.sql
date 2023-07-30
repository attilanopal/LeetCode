SELECT DISTINCT no3.num  AS ConsecutiveNums
FROM
  Logs no3
  JOIN
  Logs no2
    ON no2.id = (no3.id-1)
  JOIN
  Logs no1
    ON no1.id = (no2.id-1)
WHERE
  no2.num = no3.num AND no1.num = no3.num 
;