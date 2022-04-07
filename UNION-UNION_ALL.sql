/* UNION */
USE employees;
SELECT dept_no FROM departments
UNION SELECT dept_no FROM dept_emp;

INSERT INTO departments(dept_no, dept_name) VALUES ("d010", "Analista") ;
SELECT * FROM departments;

SELECT dept_no FROM departments
UNION SELECT dept_no FROM dept_emp;

/* UNION ALL */
SELECT dept_no AS departamentos FROM departments
UNION ALL SELECT dept_no FROM dept_emp;
 