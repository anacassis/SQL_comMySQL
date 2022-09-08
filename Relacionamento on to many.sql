create table  cliente(
	id int primary key auto_increment not null,
    nome varchar(100),
    data_nascimento date
    );
 drop table pedidos;   
 drop table cliente;
create table pedidos(
	id int primary key auto_increment not null, 
    qtda_itens int(10),
    total float,
    cliente_id int not null, 
    foreign key (cliente_id) references cliente(id)
    );
    
insert into cliente(nome, data_nascimento) values ("Ana Carolina","1995-09-26");
insert into cliente(nome, data_nascimento) values ("Isabela","1995-03-10");
insert into cliente(nome, data_nascimento) values ("Pedro Henrique","1995-05-08");
insert into pedidos(qtda_itens, total ,cliente_id ) values (2,2500,1);
insert into pedidos(qtda_itens, total ,cliente_id ) values (3,500,1);
insert into pedidos(qtda_itens,total,cliente_id ) values (5, 5500,2);
insert into pedidos(qtda_itens, total ,cliente_id ) values (1,3300,2);
insert into pedidos(qtda_itens,total,cliente_id ) values (1, 300,3);
insert into pedidos(qtda_itens,total,cliente_id ) values (3, 1100,3);

/* junção de pedidos e clientes*/
select * from cliente;
select cliente.nome, cliente.data_nascimento, pedidos.qtda_itens,
pedidos.total, pedidos.cliente_id 
from cliente ;

/* pedidos Isabela */
select cliente.nome, cliente.data_nascimento, pedidos.qtda_itens,
pedidos.total, pedidos.cliente_id 
from cliente 
join pedidos ON pedidos.cliente_id = cliente.id
where cliente.id = 2;