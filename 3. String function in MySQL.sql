-- String Functions --
-- Built-in MySQL function that helps us use string differently --

SELECT LENGTH('skyfall');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2;
;

SELECT UPPER('skyfall');
SELECT LOWER('SKY');

SELECT first_name, UPPER(first_name)
FROM employee_demographics
;

-- TRIM --
-- take the white space (front&end) and get rid of it --

SELECT RTRIM('         sky         ');



-- SUBSTRING --

SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name,3,2),
birth_date,
SUBSTRING(birth_date,6,2) AS birth_month
FROM employee_demographics;


-- REPLACE --
-- replace character with diff character --

SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM employee_demographics;

-- LOCATE --

SELECT LOCATE('x','Alexander');

SELECT first_name, LOCATE('An',first_name)
FROM employee_demographics;

-- CONCAT --
-- combining column --

SELECT first_name, last_name,
CONCAT (first_name,' ',last_name) AS full_name
FROM employee_demographics;