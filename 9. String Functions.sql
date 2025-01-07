-- String Functions

SELECT LENGTH('skyfall');

SELECT first_name, length(first_name) as len_name
FROM employee_demographics
ORDER BY len_name DESC;

SELECT UPPER('Sky');

SELECT LOWER('Sky');

SELECT first_name, UPPER(first_name)
FROM employee_demographics;

-- TRIM

SELECT ('      sky     ');
SELECT TRIM('      sky     ');
SELECT LTRIM('      sky     ');
SELECT RTRIM('      sky     ');

-- SUBSTRINGS

SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3, 2),
birth_date,
SUBSTRING(birth_date, 6, 2) birth_month
FROM employee_demographics;

SELECT first_name, REPLACE(first_name, 'a', 'c')
FROM employee_demographics;

SELECT LOCATE('x', 'Alexander');

SELECT first_name, LOCATE('An', first_name)
FROM employee_demographics;

SELECT first_name, last_name,
CONCAT(first_name,' ', last_name) full_name
FROM employee_demographics;