-- Limit

SELECT * 
FROM employee_demographics
ORDER BY age DESC
LIMIT 3;

SELECT * 
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1; # Selecciona 1 fila luego de la segunda

-- Aliasing

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40;

SELECT gender, AVG(age) avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40;
