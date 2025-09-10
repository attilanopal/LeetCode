-- Write your PostgreSQL query statement below
SELECT stud.student_id, stud.student_name, sub.subject_name, COUNT(exa.subject_name) AS attended_exams
FROM Students stud CROSS JOIN  subjects sub
   LEFT JOIN examinations exa ON stud.student_id = exa.student_id AND sub.subject_name = exa.subject_name 
GROUP BY stud.student_id, stud.student_name, sub.subject_name
ORDER BY stud.student_id, stud.student_name, sub.subject_name;