/* INNER JOIN */

SELECT employees.first_name, employees.last_name, salaries.salary AS Salario
FROM employees
INNER JOIN salaries 
ON employees.emp_no = salaries.emp_no
WHERE salaries.salary >= 15000
ORDER BY salaries.salary DESC;

/* EXERCICIO 22 */
SELECT employees.first_name, employees.gender, titles.title
FROM employees
INNER JOIN titles 
ON employees.emp_no = titles.emp_no;

/* LEFT JOIN */
SELECT employees.*, salaries.salary AS Salario
FROM employees
LEFT JOIN  salaries 
ON employees.emp_no = salaries.emp_no
WHERE salaries.salary >= 15000;

/* RIGHT JOIN */ 
USE constrains;
SELECT endereço.rua, pessoas.*
FROM endereço
RIGHT JOIN pessoas
ON pessoas.id = endereço.pessoa_id;

/* Desafio */
USE employees;
SELECT employees.first_name, employees.last_name, titles.title, salaries.salary, dept_manager.dept_no
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no
INNER JOIN titles
ON  employees.emp_no = titles.emp_no
INNER JOIN dept_manager
ON employees.emp_no= dept_manager.emp_no
WHERE salaries.salary >= 15000 AND NOT titles.title = "Manager"
ORDER BY salaries.salary DESC;
