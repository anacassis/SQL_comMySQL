Use empresa;
CREATE TABLE pessoas(nome VARCHAR(100), cpf CHAR(11), descricao MEDIUMTEXT);
CREATE database emoção;
drop DATABASE emoção;
CREATE TABLE cores(nome VARCHAR(2));
DROP TABLE cores;

CREATE DATABASE teste_tipos_dados;
USE teste_tipos_dados;
CREATE TABLE produtos(nome VARCHAR(50), sku CHAR(5), informacoes MEDIUMTEXT);
CREATE TABLE  cadastro(nome VARCHAR(100), sobrenome VARCHAR(100));
select * from teste_tipos_dados.cadastro;
USE teste_tipos_dados;

INSERT INTO produtos(nome,sku, informacoes) VALUES("Playstation 5", "PS5XY","É um videogame de ultima geração");
select * from produtos;
USE teste_tipos_dados;
INSERT INTO produtos(nome,sku, informacoes) VALUE("Celular", "CELSA", "Celular samsung s20");
INSERT INTO produtos(nome,sku, informacoes) VALUE("Sofá","MOVEI","Sófa muito fofo");
select * from produtos;

CREATE TABLE servidores (nome VARCHAR(100), espaco_disco INT(10), ligado BOOL);
INSERT INTO servidores(nome, espaco_disco,ligado) VALUE ("Servidor", 12365454, 0);
select * from servidores;
INSERT INTO servidores(nome, espaco_disco,ligado) VALUE ("Servidor 2", 11112,1);
INSERT INTO servidores(nome, espaco_disco, ligado) VALUE ("Servidor 3", 12541,0);
INSERT INTO servidores (nome, espaco_disco, ligado) VALUE ("Servidor 4", 1452,1);
SELECT * FROM servidores;

CREATE TABLE aniversario(nome VARCHAR(100), data_nascimento DATE);
INSERT INTO aniversario (nome, data_nascimento) VALUE ("Ana", "1995-09-26");
SELECT * FROM  aniversario;
INSERT INTO aniversario(nome,data_nascimento) VALUE ("Joao", "1995-10-30");

CREATE TABLE funcionarios(nome VARCHAR(100));
ALTER TABLE funcionarios ADD COLUMN (aniversario DATE);
SELECT * FROM funcionarios;
ALTER TABLE funcionarios ADD COLUMN (sobrenome VARCHAR(100));
INSERT INTO funcionarios (nome, aniversario, sobrenome) VALUES ("ANA", "1998-03-02", "Cassia");
ALTER TABLE funcionarios ADD COLUMN (cpf CHAR(11));
ALTER TABLE funcionarios DROP COLUMN aniversario;
ALTER TABLE funcionarios DROP COLUMN CPF;
ALTER TABLE funcionarios ADD COLUMN (Data_nascimento VARCHAR (100));
SELECT * FROM funcionarios;
ALTER TABLE funcionarios MODIFY COLUMN Data_nascimento date;
DELETE FROM pessoas WHERE nome = "joaquim";
