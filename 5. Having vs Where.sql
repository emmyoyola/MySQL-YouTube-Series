-- HAVING vs WHERE
# HAVING sólo funciona para funciones agregadas

SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;

SELECT occupation, AVG(salary)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%mana%'
GROUP BY(occupation)
HAVING AVG(salary) > 70000;