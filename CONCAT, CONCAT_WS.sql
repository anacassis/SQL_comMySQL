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

