-- Window Functions

SELECT gender, AVG(salary) 
FROM employee_demographics d
JOIN employee_salary s 
	ON d.employee_id = s.employee_id
GROUP BY gender;

-- Hacer 'lo mismo' con Window Functions

SELECT d.first_name, d.last_name, AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics d
JOIN employee_salary s 
	ON d.employee_id = s.employee_id;
    
    
-- Rolling Total

SELECT d.first_name, d.last_name, gender, salary, SUM(salary) OVER(PARTITION BY gender ORDER BY d.employee_id) AS Rollinng_total
FROM employee_demographics d
JOIN employee_salary s 
	ON d.employee_id = s.employee_id;
    
SELECT d.employee_id,
d.first_name, 
d.last_name,
gender,
salary,
ROW_NUMBER() OVER()
FROM employee_demographics d
JOIN employee_salary s 
	ON d.employee_id = s.employee_id;
    
SELECT d.employee_id,
d.first_name, 
d.last_name,
gender,
salary,
ROW_NUMBER() OVER(PARTITION BY gender)
FROM employee_demographics d
JOIN employee_salary s 
	ON d.employee_id = s.employee_id;
    
-- Rank
SELECT d.employee_id,
d.first_name, 
d.last_name,
gender,
salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) rank_num, # Duplicados con el mismo número y el sigte número toma la posición que le toca (5,5,7)
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) dense_rank_num # Duplicados con el mismo número y el sigte número toma el número sigte (5,5,6)
FROM employee_demographics d
JOIN employee_salary s 
	ON d.employee_id = s.employee_id;
