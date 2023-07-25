SELECT reg.contest_id, ROUND((COUNT(DISTINCT(reg.user_id))/ (SELECT count(user_id) FROM Users) *100),2) AS percentage
FROM 
  Register reg
GROUP BY reg.contest_id
ORDER BY percentage DESC, reg.contest_id ASC
;