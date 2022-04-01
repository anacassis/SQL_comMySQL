USE employees;
SELECT * FROM salaries WHERE salary >= 150000;
SELECT * FROM titles WHERE emp_no >= 11500;

/* utilizando DISTINCT seleção unica */
SELECT DISTINCT title FROM titles;
SELECT DISTINCT dept_no FROM dept_emp;

/* Operadores lógicos WHERE, AND, OR, NOT */
SELECT 
  *
FROM 
  salaries 
WHERE 
  salary > 150000 
AND from_date > "1991-12-12" OR emp_no > 35000;

SELECT
  *
FROM 
  salaries 
WHERE
  salary > 153000 AND from_date > "1991-12-12" AND emp_no > 35000;

SELECT 
  * 
FROM
  titles
WHERE 
  title= "Senior Engineer" OR title = "Staff" OR emp_no = 12500 ORDER BY emp_no DESC;

USE employees;
SELECT * FROM titles WHERE NOT title= "Staff" AND NOT title= "Senior Engineer";
SELECT * FROM departments WHERE NOT dept_name= "Sales" AND NOT dept_name= "Finance";
SELECT * FROM salaries WHERE NOT salary > 60000 AND NOT salary <= 50000;

/* ORDER BY, LIMIT */
USE employees;
SELECT * FROM salaries ORDER BY salary DESC;
SELECT * FROM salaries ORDER BY from_date ASC;
SELECT * FROM titles ORDER BY title DESC;
SELECT * FROM employees ORDER BY birth_date DESC LIMIT 15;
SELECT * FROM  titles ORDER BY title ASC LIMIT 5;
SELECT * FROM titles 

/* MIN, MAX */
SELECT MIN(salary) from salaries;
SELECT MAX(salary) from salaries;
SELECT MAX(salary) AS salary from salaries;
SELECT MAX(salary) AS maximo from salaries;

/* COUNT */
SELECT COUNT(*) FROM salaries WHERE  salary > 100000;
SELECT COUNT(*) FROM employees WHERE gender = "F";
SELECT COUNT(*) FROM employess WHERE gender = "M";
SELECT COUNT(*) AS Registros FROM departments;
/* AVG */
SELECT AVG(salary) AS  mediaSalary FROM salaries WHERE salary > 100000; 
SELECT AVG(salary) from salaries;
/* SUM */ 
SELECT SUM(salary) from salaries;
SELECT SUM(salary) AS somatoria from salaries WHERE salary >= 100000;

/* LIKE */
SELECT * FROM employees WHERE first_name LIKE "%ana%" ORDER BY first_name ASC LIMIT 10;
SELECT * FROM employees WHERE last_name LIKE "%dou%";
SELECT * FROM employees WHERE first_name LIKE "%lo%" ORDER BY first_name ASC;
SELECT * FROM employees WHERE last_name LIKE "A%" AND gender LIKE "M";
SELECT * FROM employees WHERE last_name LIKE "%M" AND gender LIKE "F";
SELECT * FROM  employees WHERE last_name LIKE "K%" OR last_name LIKE "A%" LIMIT 10;
SELECT * FROM titles WHERE title LIKE "%Engineer%";

/* IN */
SELECT * FROM dept_emp WHERE dept_no IN ("d005", "d006", "d004") LIMIT 10;
select * from departments WHERE  dept_name IN ("PRODUCTION", "sales");
SELECT * FROM employees WHERE last_name IN ("Facello", "Peac");

/* BETWEEN */
SELECT * FROM dept_emp WHERE dept_no BETWEEN "d003" AND "d005";
SELECT 
  *
FROM
  salaries
WHERE
  salary BETWEEN 150000 AND 275000; 
  
SELECT SUM(salary) AS SomaSalario FROM salaries;
SELECT dept_no AS "Numero do Apartamento" , dept_name AS department_name FROM departments
