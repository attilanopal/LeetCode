# Write your MySQL query statement below
SELECT em.name as "Employee" FROM Employee em JOIN Employee ma ON em.managerId = ma.id
WHERE em.salary > ma.salary;