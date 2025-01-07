-- Stored Procedures

DELIMITER $$
CREATE PROCEDURE large_salaries2()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000
	;
    SELECT *
	FROM employee_salary
	WHERE salary >= 10000
	;
END $$
DELIMITER ;

CALL large_salaries2();


-- Sintaxis completa

USE `parks_and_recreation`;
DROP procedure IF EXISTS `new_procedure`;

DELIMITER $$
USE `parks_and_recreation`$$
CREATE PROCEDURE `new_procedure` ()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000
	;
    SELECT *
	FROM employee_salary
	WHERE salary >= 10000
	;
END$$
DELIMITER ;

-- Agregar un parámetro al store procedure (parameter)
	-- En el ejemplo el parámetro sería p_employee_id, se debe indicar el tipo de valor (int, str, ...)

DELIMITER $$
CREATE PROCEDURE large_salaries3(p_employee_id INT)
BEGIN
	SELECT *
	FROM employee_salary
	WHERE employee_id = employee_id
	;
END $$
DELIMITER ;

CALL large_salaries4(1);
