SELECT pres.id FROM Weather pres
  JOIN Weather past ON 
    DATEDIFF(pres.recordDate, past.recordDate) = 1 AND
    pres.temperature > past.temperature
;