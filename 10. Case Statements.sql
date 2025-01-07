-- CASE Statement

SELECT first_name, last_name, age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 AND 50 THEN 'Old'
    WHEN age >= 50 THEN 'On Death`s Door'
END AS Age_Brecket
FROM employee_demographics;


-- Pay Increse and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% Bonus

SELECT first_name, last_name, salary, sal.dept_id, dep.department_name,
 CASE 
	WHEN salary < 50000 THEN salary*1.05
    WHEN salary > 50000 THEN salary + (salary*0.07)
END new_salary,
CASE 
	WHEN dep.department_name = 'Finance' THEN salary * .1
END AS bonus
FROM employee_salary sal
JOIN parks_departments dep
	ON sal.dept_id = dep.department_id;

SELECT