create database livraria;
use livraria;

create table livros(
id integer primary key auto_increment,
Título varchar(50) unique,
Autores varchar(50),
AnoPublicação int(5)
);

insert into livros value(null, "Aventuras", "Autor1, Autor2, Autor3", 2005);
insert into livros value(null, "Romance", "Autor4", 2010);
insert into livros value(null, "Ficção Científica", "Autor5, Autor6", 2015);
select * from livros;


create table contos(
id integer primary key auto_increment,
Título varchar(50) unique,
Autores varchar(50),
ISBN varchar (30),
AnoPublicação int(5)
);

insert into contos value(null, "A volta dos que não foram", "Zuluzão, Xamã, Gabriel o Pensador", "159-4567892", 2005);
insert into contos value(null, "A revanche dos desistentes", "Guilherme Del Bode", "123-6542645", 2010);
insert into contos value(null, "A planta mágica", "Fernando Beira Rio, Mark William Herbas Camacho", "654-1572896", 2015);

select * from contos;

create table eletrônicos(
id integer primary key auto_increment,
Produto varchar(100),
Categoria varchar(20),
Quantidade int(20),
Preço varchar(50)
);

insert into eletrônicos value(null,"Notebook Positivo Intel Celeron Windows 12 (2GB RAM e 50GB ROM) com atalho Netflix e Youtube", "Computação", 200, "1999.99 (ou em 10x sem juros no cartão da loja)");
insert into eletrônicos value(null, "Mouse Gamer Quadruple Click, 27 botões de funcionalidade", "Periférico", 250, "49.99");
insert into eletrônicos value(null, "Cadeira Escritório e Gamer, Car Sensitive (sensação de estar em um banco de carro)", "Mobiliário", 40, "499,99 (ou em 10x sem juros no cartão da loja)");
insert into eletrônicos value(null, "Processador Interl Core I12, 6.10 GHz, 48 Núcleos", "Hardware", 20, "12.999,54 (ou em 10x sem juros no cartão da loja)");
insert into eletrônicos value(null, "Monitor Alelo, UltraWide, FullHDS, 458.5 Polegadas, Modelo Cinema Experience", "Dispositivos Eletrônicos", 50, "78.998,98 (ou em 10x sem juros no cartão da loja/cupom de desconto não aplicável nessa oferta)");

select * from eletrônicos where Preço != "78.998,98 (ou em 10x sem juros no cartão da loja/cupom de desconto não aplicável nessa oferta)";
select * from eletrônicos;
