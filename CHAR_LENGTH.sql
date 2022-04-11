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