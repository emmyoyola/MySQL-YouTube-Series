-- JOINS

SELECT * 
FROM employee_demographics;

SELECT *
FROM employee_salary;

-- INNER JOIN
SELECT dem.employee_id, dem.first_name, dem.last_name, age, occupation, salary
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
# Falta el id 2 porque no está en la tabla employee_salary

-- OUTER JOIN

SELECT dem.employee_id, dem.first_name, dem.last_name, age, occupation, salary
FROM employee_demographics dem
LEFT JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;

SELECT dem.employee_id, dem.first_name, dem.last_name, age, occupation, salary
FROM employee_demographics dem
RIGHT JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;

-- SELF JOIN
# La tabla se une a sí misma

SELECT emp1.employee_id emp_santa, 
emp1.first_name first_name_santa,
emp1.last_name last_name_santa,
emp2.employee_id, 
emp2.first_name,
emp2.last_name
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id +1 = emp2.employee_id;

-- Joining multiple tables

SELECT dem.employee_id, dem.first_name, dem.last_name, age, occupation, salary, sal.dept_id, dep.department_name
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
JOIN parks_departments dep
	ON sal.dept_id = dep.department_id;
    

