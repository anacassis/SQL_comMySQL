USE sakila;
SELECT * from actor;

--  CHAR_LENGTH ( retorna o numero de caracteres de cada linha de uma coluna
SELECT * FROM  country;
SELECT first_name, CHAR_LENGTH(first_name) AS "primeiro_nome", last_name, CHAR_LENGTH(last_name) AS "segundo_nome",
country.country, CHAR_LENGTH(country) AS Cidade
	FROM country, actor
WHERE CHAR_LENGTH(first_name) >10  
ORDER BY CHAR_LENGTH(country) DESC;

-- Exercício 26
SELECT * FROM address;
SELECT address_id, address, postal_code, CHAR_LENGTH(postal_code)
	FROM  address
ORDER BY address_id DESC;

-- 	CONCAT
SELECT * from empresa.funcionarios;

SELECT CONCAT(nome," tem ", idade," anos de idade! ") AS "nome_e_idade"
	from empresa.funcionarios;
    
-- Exercício 27
SELECT * FROM sakila.actor;
SELECT CONCAT(" nome ", first_name, " sobrenome ", last_name) AS "nome_e_sobrenome"
	from sakila.actor;
    
SELECT actor_id, CONCAT( first_name ," ", last_name ) AS "nome_e_sobrenome"
	FROM  sakila.actor;
    
-- CONCATE_WS (separador comunm)
SELECT * FROM empresa.funcionarios;
SELECT CONCAT_WS(" , ", id, nome,idade) from empresa.funcionarios; 

-- FORMAT
SELECT * from sakila.payment;
SELECT payment_id, amount, FORMAT(amount,1) 
	FROM sakila.payment;
    
-- INSTR  conta no numero de posição de algum caracter
SELECT * FROM sakila.customer;
USE sakila;

SELECT email, INSTR(email,"@") FROM customer;

SELECT email, INSTR(email,"org") 
	FROM customer
WHERE INSTR(email,"org") > 20;

-- LCASE (Minúsculo)
SELECT * FROM actor;
SELECT first_name, last_name, LCASE(CONCAT(first_name, " ", last_name)) AS "nome_completo"
	FROM actor;
    
-- UCASE (Maiúsculo)
SELECT UCASE(description) FROM sakila.film;    

-- LEFT 
SELECT * from film;
SELECT title, LEFT(title,8) FROM film 
WHERE film_id= 1;

-- RIGHT EXTRAI CARACTERES DA DIREITA PRA ESQUERDA
SELECT RIGHT(last_update,8) AS Horário FROM sakila.category;

-- REPLACE (Adiciona um texto, ou , atualiza o texto proposto)
SELECT REPLACE(name,"Action","Action & Adventure") AS name
	FROM category;
    
-- EXERCICIO 
SELECT 
	REPLACE(first_name, "MARY","Maria") AS Nome,
    REPLACE(last_name,"SMITH", "Smith") AS Sobrenome
    FROM customer
WHERE last_name = "SMITH";
   
-- SUBSTR (TIRAR UMA STRING EM UM INTERVALO)
SELECT last_update, SUBSTR(last_update,1,4) AS Ano,
	SUBSTR(last_update, 6,2) AS Mês,
    SUBSTR(last_update,9,2) AS Dia FROM sakila.actor;

SELECT * FROM sakila.actor;

