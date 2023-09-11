create database exemplo_segunda_forma_normal;
use exemplo_segunda_forma_normal;

create table pedidos(
		idpedido int primary key auto_increment,
		nome_produto varchar(255),
        preço double,
        quantidade int,
        id_cliente int ,
        Constraint FK_id_cliente
        foreign key (id_cliente) references cliente(idcliente) 
);

create table cliente(
		idcliente int primary key auto_increment,
        nome varchar(150),
        data_nascimento varchar(200),
        cpf varchar(14) unique, 
        gênero varchar(10)
);

insert into cliente values(null, "Rafaelson", "02/01/2000", "000.000.000-01", "Masculino");

insert into pedidos values (null, "Camisa Polo", 150.99, 2, 1); 

