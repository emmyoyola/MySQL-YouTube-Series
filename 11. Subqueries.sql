-- Subqueries

SELECT * 
FROM employee_demographics
WHERE employee_id IN 
	(SELECT employee_id 
		FROM employee_salary
		WHERE dept_id = 1);

SELECT first_name, salary, (SELECT AVG(salary) FROM employee_salary)
FROM employee_salary;

# Seleccionar la edad promedio entre las edades máximas por género
SELECT AVG(max_age)
FROM 
	(SELECT gender, 
    AVG(age) avg_age,
    MAX(age) max_age,
    MIN(age) min_age,
    COUNT(age) recuento
	FROM employee_demographics
	GROUP BY gender) AS agg_table;
    
