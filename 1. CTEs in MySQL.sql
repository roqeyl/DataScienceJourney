-- CTEs --
-- Common Table Expressions (allow to define a sub query block which can then reference within the main query --

WITH CTE_Example AS 
(
SELECT gender, 
AVG(salary) AS avg_salary, 
MAX(salary) AS max_salary, 
MIN(salary) AS min_salary, 
COUNT(salary) AS count_salary
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT AVG(avg_salary)
FROM CTE_Example
;


WITH CTE_Example (gender, avg_salary, max_salary, min_salary, count_salary) AS
(
SELECT gender, 
AVG(salary) , 
MAX(salary) , 
MIN(salary) , 
COUNT(salary) 
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_Example
;

--

SELECT AVG(avg_salary)
FROM
(
SELECT gender, 
AVG(salary) AS avg_salary, 
MAX(salary) AS max_salary, 
MIN(salary) AS min_salary, 
COUNT(salary) AS count_salary
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id
GROUP BY gender
) example_subquery
;



-- Create multiple CTEs --

WITH CTE_Example AS 
(
SELECT  
employee_id,
gender,
birth_date
FROM employee_demographics dem
WHERE birth_date > '1985-01-01'
),
CTE_Example2 AS
(
SELECT employee_id, salary 
FROM employee_salary
WHERE salary > 50000
)
SELECT *
FROM CTE_Example
JOIN CTE_Example2
	ON CTE_Example.employee_id = CTE_Example2.employee_id
;


