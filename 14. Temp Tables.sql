-- Temporary Tables

CREATE TEMPORARY TABLE temp_table
(firs_name varchar(50),
last_name varchar(50),
favorite_kdrama varchar(100)
);

INSERT INTO temp_table
VALUES('Emmy', 'Oyola', 'Twinkling watermelon');

SELECT *
FROM temp_table;

-- Usualmente se crean a partir de otras tablas

CREATE TEMPORARY TABLE salary_over_50k
SELECT * 
FROM employee_salary
WHERE salary >= 50000;


SELECT * 
FROM salary_over_50k;