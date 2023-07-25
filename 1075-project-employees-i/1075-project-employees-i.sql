SELECT pr.project_id, ROUND(AVG(em.experience_years),2) AS average_years 
FROM
  Project pr
  JOIN
  Employee em
  ON pr.employee_id = em.employee_id
GROUP BY pr.project_id