create database relacoes;
drop table estudantes;
drop table contato;
use relacoes;

create table estudantes(
	id int primary key auto_increment not null,
    nome VArCHAR(100),
    turma varchar(100));
    
create table contato (
	id int primary key auto_increment not null, 
    telefone varchar(100),
    endereço varchar(100) not null,
    estudante_id int not null, 
    foreign key(estudante_id) references estudantes(id));

select * from contato;

insert into estudantes (nome,turma) values ("Ana Carolina", "Turma A");
insert into estudantes (nome,turma) values ("Lara", "Turma b");
insert into estudantes (nome,turma)  values ("Camila", "Turma D");
insert into estudantes (nome,turma)  values ("Pedro", "Turma C");
insert into contato (telefone, endereço, estudante_id) values ("18-29394983","Rua Jose Alcides",1);
insert into contato(telefone, endereço,estudante_id) values ("16-2256641","Rua 1 de abril",2); 
insert into contato(telefone,endereço,estudante_id) values ("16-2957641","Rua Jose Augusto",3);
insert into contato(telefone,endereço,estudante_id) values ("16-123651","Rua Paes leme",4);

select * from estudantes;
select * from contato;
   
select  estudantes.nome, estudantes.turma, contato.telefone 
from estudantes 
join contato on contato.estudante_id = estudantes.id;


    