SELECT em.reports_to AS employee_id, ma.name, COUNT(em.employee_id) AS reports_count, ROUND(AVG(em.age),0) AS average_age
FROM
  Employees em
  JOIN
  Employees ma
  ON
    ma.employee_id = em.reports_to
GROUP BY em.reports_to
ORDER BY em.reports_to
;