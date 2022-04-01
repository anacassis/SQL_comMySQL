/*
CRIE UM BANCO DE DADOS contas E UMA TABLEA CHAMADA contas;
INSIRA AS COLUNAS ID, NOME, SOBRENOME, SALDO, DATA_NASCIMENTO;
ENCONTRE AS MELHORES TIPOS DE DADOS PARA AS MESMAS;
A COLUNA DE ID DEVE SER PRIMARY KEY, AUTO_INCREMENT E NOT NULL;
CRIE UM INDICE EM SALDO;
ADICIONE 3 REGISTROS NA TABELA;
*/



CREATE DATABASE contas;
CREATE TABLE conta(
   id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
   nome VARCHAR(100),
   sobrenome VARCHAR(50),
   saldo INT,
   data_nascimento DATE);
USE contas;
SELECT * FROM conta;
CREATE INDEX index_saldo ON conta(saldo);

INSERT INTO conta(nome, sobrenome,saldo,data_nascimento) VALUES ("Ana Carolina", "Adriano", 50.000, "1995-09-26");
INSERT INTO conta(nome, sobrenome, saldo, data_nascimento) VALUES ("Douglas", "Andrade", 20.000,"1999-12-06");
INSERT INTO conta(nome, sobrenome, saldo, data_nascimento) VALUES ("Kelly", "Faria", 100.000, "2000-05-12");

SELECT * FROM conta;
SELECT SUM(saldo) from conta;
SELECT SUM(saldo) FROM conta WHERE data_nascimento >= "2000-05-12";
