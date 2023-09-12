CREATE DATABASE exercicio_11_09;
USE exercicio_11_09;

CREATE TABLE Clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50)
);

CREATE TABLE Pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    clientes_id INT,
    pedido VARCHAR(100),
    FOREIGN KEY (clientes_id) REFERENCES Clientes(id)
);

insert into Clientes (nome) values ('Luiz Augusto');
insert into Clientes (nome) values ('Otávio');
insert into Clientes (nome) values ('Paul Armando');

insert into Pedidos (clientes_id, pedido) values (1, 'Sabão em Barra');
insert into Pedidos (clientes_id, pedido) values (2, 'Detergente Líquido');
insert into Pedidos (clientes_id, pedido) values (3, 'Caçarola Tupperware');


select Pedidos.id, Clientes.nome, Pedidos.pedido from Pedidos inner join Clientes on Pedidos.clientes_id = Clientes.id;








create table Departamentos (
    id int primary key auto_increment,
    setor varchar(50)
);

create table Funcionarios (
    id int primary key auto_increment,
    departamento_id int,
    nome varchar(50),
    foreign key (departamento_id) references Departamentos(id)
);

insert into Departamentos (setor) values ('Jurídico');
insert into Departamentos (setor) values ('Administrativo');
insert into Departamentos (setor) values ('Expedição de Materiais');

insert into Funcionarios (nome, departamento_id) values ('Aparecida dos Santos', 1);
insert into Funcionarios (nome, departamento_id) values ('Carlos Alberto', 2);
insert into Funcionarios (nome, departamento_id) values ('João Joaquin', 3);

select Funcionarios.nome, Departamentos.setor as NomeDepartamento from Funcionarios left join Departamentos on Funcionarios.departamento_id = Departamentos.id;




create table Produtos (
    id int primary key auto_increment,
    produtos varchar(50)
);

create table Vendas (
    id int primary key auto_increment,
    produtos_id int,
    vendas varchar(50),
   foreign key (produtos_id) references Produtos(id)
);

insert into Produtos (produtos) values ('Sabão Líquido');
insert into Produtos (produtos) values ('Rosquinha Mabel');
insert into Produtos (produtos) values ('Filé de Tilápia');

insert into Vendas (produtos_id, vendas) values (1, '25 unidades');
insert into Vendas (produtos_id, vendas) values (2, '10 unidades');
insert into Vendas (produtos_id, vendas) values (3, '15 unidades');

select Produtos.produtos as Produtos, Vendas.vendas as Quantidade from Produtos
right join Vendas on Produtos.id = Vendas.produtos_id;
