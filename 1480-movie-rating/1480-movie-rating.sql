(SELECT us.name as results
FROM
  Users us
  JOIN
  MovieRating mor
  ON mor.user_id = us.user_id
GROUP BY mor.user_id
ORDER BY COUNT(mor.movie_id) DESC , us.name
LIMIT 1)
UNION ALL
(SELECT mov.title as results
FROM
  Movies mov 
  JOIN
  MovieRating mor
  ON mov.movie_id = mor.movie_id
WHERE MONTH(mor.created_at) = 02 AND YEAR(mor.created_at) = 2020
GROUP BY mor.movie_id
ORDER BY AVG(rating) DESC, mov.title 
LIMIT 1)
;
    