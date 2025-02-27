-- Joins

SELECT * FROM employee_demographics
;

SELECT * FROM employee_salary
;

SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

-- Outer Joins
SELECT *
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

-- Self Join
SELECT *
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
	ON  emp1.employee_id + 1 = emp2.employee_id
;

SELECT 
emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_stanta, 
emp1.last_name AS last_name_stanta,
emp2.employee_id AS emp_name,
emp2.first_name AS first_name_emp, 
emp2.last_name AS last_name_emp
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
	ON  emp1.employee_id + 1 = emp2.employee_id
;

-- Joining multiple tables together

SELECT dem.first_name, dem.last_name, pd.department_name
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
	ON sal.dept_id = pd.department_id
;

SELECT *
FROM parks_departments;

