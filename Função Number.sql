/* Arredondando para Cima */
select amount,ceil(amount) as arredondado 
from sakila.payment;

select count(*) as "Qtda total colunas" 
from sakila.payment;

/* qtda total de clientes cadastrados */
select count(first_name) 
from sakila.customer;

/* Arredondando para Baixo */
select amount, floor(amount) as para_cima
from sakila.payment;

/* Maior valor Retornado*/
select MAX(amount) as maior_valaor
from sakila.payment;

/* Menor valor Retornado*/
select min(amount) as menor_valor
from sakila.payment;

select MAX(amount) as maior_valor, min(amount) as menor_valor
from sakila.payment;

/* Exercicio */ 
select min(salary) as menor_valor, max(salary) as maior_valor
from employees.salaries;

/* Função Sum */
select sum(salary) 
from employees.salaries
where emp_no = 10001;

select sum(amount)
from sakila.payment;

select * from employees.salaries;