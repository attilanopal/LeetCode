SELECT pres.id FROM Weather pres
  JOIN Weather past ON 
    DATEDIFF(pres.recordDate, past.recordDate) = 1
  WHERE
    pres.temperature > past.temperature
;