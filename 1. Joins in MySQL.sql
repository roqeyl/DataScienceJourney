-- Joins --

SELECT *
FROM employee_demographics
;

SELECT *
FROM employee_salary
;

-- Inner Joins --
-- (return rows that are the same in both columns from both tables) --

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

-- selecting actual column (INNER JOIN) --

SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;


-- OUTER JOINS (Right Join & Left Join) -- 
-- Left Join: Take everything from the left table, even if there's no match in the join, then only return the matches from the right table --

SELECT *
FROM employee_demographics AS dem -- left table--
LEFT JOIN employee_salary AS sal -- right table --
	ON dem.employee_id = sal.employee_id
;

SELECT *
FROM employee_demographics AS dem -- left table--
RIGHT JOIN employee_salary AS sal -- right table --
	ON dem.employee_id = sal.employee_id
;


-- SELF JOIN --
-- a join where u tie the table to itslef --

SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id = emp2.employee_id
;

SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_name,
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;

-- Joining multiple table together -- 

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
	ON sal.dept_id = pd.department_id
;

SELECT *
FROM parks_departments;