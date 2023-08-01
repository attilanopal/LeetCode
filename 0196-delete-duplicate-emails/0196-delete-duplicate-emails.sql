DELETE pe2 FROM Person pe1, Person pe2
WHERE
  pe1.email = pe2.email AND pe2.id > pe1.id
;