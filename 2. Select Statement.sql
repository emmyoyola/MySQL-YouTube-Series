-- SELECT Statement

SELECT * 
FROM parks_and_recreation.employee_demographics;

SELECT first_name,
last_name,
birth_date,
age,
(age + 10) * 10 +10 AS operation
FROM parks_and_recreation.employee_demographics;

#PEMDAS P: Parentheses; E: Exponents; M: Multiplication; D: Division; A: Addition; S: Substraction

SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;



 