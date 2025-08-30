-- WHERE Clause

SELECT *
FROM employee_salary
WHERE salary <= 50000
;


SELECT *
FROM employee_salary
WHERE first_name = 'Leslie'
;


SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
;



-- ABD OR NOT -- Logical Operator
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'Male'
;

SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) or age > 55
;


-- LIKE STATEMENT--
-- %(anything) and _(specific value)
SELECT *
FROM employee_demographics
WHERE first_name LIKE  'a___%'
;

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989%'
;






