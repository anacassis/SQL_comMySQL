/* GROUP BY */
SELECT gender, COUNT(gender) AS "Qtd por gêneros"
FROM employees
GROUP BY gender;

/* Exercício 23 */
SELECT  hire_date, COUNT(hire_date) AS "Data contratação"
FROM employees
GROUP BY hire_date
ORDER BY COUNT(hire_date) DESC;
