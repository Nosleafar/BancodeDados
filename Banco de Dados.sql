USE primeiro_banco_de_dados;

create table pessoa (
	
    nome varchar(50),
	idade int,
    altura double,
    genero varchar(1)
);

show tables;

desc pessoa;

insert into pessoa values("Rafaelson", 23, 1.81, "M");
insert into pessoa(nome, idade) values("Carol", 24);
insert into  pessoa values("Maria", 44, 1.68, "F"),
("Vanessa", 33, 1.67, "F");

select * from pessoa;

#VarChar = caracteres variantes
#char = tamanho fixo
#binary = números binarios 
#bloob = salvar imagens
#longblood = imagens grandes
#longtext = textos longos (a partir de 255 caracteres)
#4,294,967,295 = número máximo de caracteres
#enum = dados predefinidos


create table pedido(
		nome_produto varchar(50),
        quantidade integer,
        preço double(6,2),
        pedido_status enum("Preparando", "Saiu para Entrega", "Entregue", "Cancelado")
        );
show tables;        
        
desc pedido;

insert into pedido values ("X-Burguer", 2, 16.99999, "Saiu para Entrega");
insert into pedido values ("X-Tudo", 4, 29.99, "Entregue");
insert into pedido values ("X-Bacon", 10, 12.99, "Cancelado");

select * from pedido;

#drop table pessoa;

select preço from pedido;

select (3*2);

select nome, idade from pessoa where genero = "M";
select idade from pessoa where nome = "Maria";

insert into pessoa values ("Rogério Skylab", 53, 1.81, "M");

select idade from pessoa where nome = "Maria";
select nome, idade from pessoa where nome like "%Maria%";

#inserir 10 dados na tabela de cliente
#nome, idade, cpf, endereço, telefone;

create table cliente(
	nome varchar(30),
    idade int,
    cpf varchar(20),
    endereço varchar(200),
    telefone varchar(15)
    );
    
    show tables;   
	
    desc cliente;
    
insert into cliente values("Fábio Barros Rodrigues", 37, "000.000.000-00", "Rua dona Maria Máxima, 454", "(11)7579-4618");
insert into cliente values("Gabriel Melo Silva", 77, "000.000.000-01", null, "(31)3664-4482");
insert into cliente values("Vitoria Souza Ribeiro", 29, null, "Avenida Visconde de Taunay, 1944", "(42)4979-9281");
insert into cliente values("Natalie Barrenger", null, "000.000.000-02", null, "(18)7462-3171");
insert into cliente values("Samuel Thrower", 56, null, null, null);
insert into cliente values("Šimun Božić", 71, "000.000.000-03", null, null);
insert into cliente values("Laurent Royer", 23, "000.000.000-04", "Rua Tom Jobim, 777", null);
insert into cliente values("Emilly Gomes Melo", 37, null, "Rua Padre João Crisóstomo, 1974", null);
insert into cliente values("Clara Azevedo Santos", 42, "000.000.000-05", null, "(92)3476-2388");
insert into cliente values("Leila Azevedo Lima", 12, "000.000.000-06", "Praça José Agrícola Paiva, 153", null);

select * from cliente;

select nome, telefone from cliente where idade > 30 and cpf like "%123%";
select nome, telefone from cliente where idade > 30 or cpf like "%123%";

#as = alias, mostre o dado como
select count(*) as "Contador de Cadastros" from cliente;

select count(telefone), nome from cliente group by nome order by nome;

select nome from cliente where telefone is null;

update cliente set telefone = "(61) 4004-8922";

update cliente set telefone = "(18)7462-3171" where nome =  "Natalie Barrenger";

set sql_safe_updates = 0;

create table errada(
		nome varchar(50),
        peso double,
        cpf varchar(50),
        idade varchar(20)
        );
  
	desc errada;
	select * from errada;
                
        alter table errada add idade varchar(20);
		alter table errada drop column altura;
        alter table errada rename column pezo to peso;
        alter table errada modify column peso double not null;
        insert into errada values ("Rafaelson", 74, "12345678", 23);
		alter table errada modify column peso double not null after nome;
        select concat(nome , " tem ", idade, " anos ", " e seu cpf é: ", cpf, " .Sua idade é de ", idade, " anos ") as "informação" from errada;
		delete from cliente where nome = "Fábio Barros Rodrigues";