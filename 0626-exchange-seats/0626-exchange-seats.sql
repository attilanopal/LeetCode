SELECT id, (
  CASE
    WHEN NOT (id % 2 =  0) THEN LEAD(student,1,student) OVER(ORDER BY id)
    ELSE LAG(student,1) OVER(ORDER BY id)
  END
) AS student
FROM
  Seat
;