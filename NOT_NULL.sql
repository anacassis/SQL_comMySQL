CREATE DATABASE constrains;
USE constrains;
CREATE TABLE pessoas (
   nome VARCHAR(100) NOT NULL, 
   idade INT
);
INSERT INTO pessoas (nome,idade) VALUES ("Mateus", 30);
SELECT * FROM pessoas;
INSERT INTO pessoas (nome) VALUES ("Carol");
CREATE TABLE pessoas2 (
   nome VARCHAR(100) NOT NULL, 
   idade INT NOT NULL
);
SELECT * FROM pessoas2;
INSERT INTO pessoas2 (nome,idade) VALUES ("",15);

