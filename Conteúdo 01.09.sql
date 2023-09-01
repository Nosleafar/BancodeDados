create database banco_primeira_forma;
use banco_primeira_forma;

create table pessoa(
	id integer primary key auto_increment,
    cpf varchar(14) unique,
    telefone varchar(20),
    logradouro varchar(100),
    estado varchar(2),
    numero_casa varchar(10),
    bairro varchar(50),
    cep varchar(10)
);

insert into pessoa values(null, "123.456.789-10", "(11) 4002-8922", "Avenida Sem Fim", "DF", "12-B", "Do Nunca", "77777-777");

select * from pessoa;