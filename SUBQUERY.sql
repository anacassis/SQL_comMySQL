-- SUBQUERY 
SELECT emp_no,employees.first_name,(
	SELECT SUM(salary)
	FROM salaries
	WHERE employees.emp_no = salaries.emp_no
) AS "soma_salario"
FROM employees
ORDER BY emp_no DESC;

-- EXISTS 
SELECT  emp_no, first_name,last_name,(
	SELECT SUM(salary)
    from salaries 
    WHERE employees.emp_no = salaries.emp_no
) AS "soma_salario"
FROM employees
WHERE EXISTS(
	SELECT salary 
    FROM salaries 
    WHERE employees.emp_no = salaries.emp_no 
    HAVING SUM(salary) > 1800000
);

-- ANY 
SELECT first_name 
from employees
WHERE emp_no = ANY (
	SELECT emp_no
    FROM salaries
    WHERE salary > 150000
);