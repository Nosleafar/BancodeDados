create database agenda;
use agenda;

create table agenda(
 nome varchar(50),
 telefone varchar(20),
 endereço varchar(50)
 );
insert into agenda values("Fábio Barros Rodrigues", "(11)7579-4618" , "Rua dona Maria Máxima, 454");
insert into agenda values("Gabriel Melo Silva", "(31)3664-4482", "Rua Pindamonhangaba, 307");
insert into agenda values("Vitoria Souza Ribeiro", "(42)4979-9281", "Avenida Visconde de Taunay, 1944");
insert into agenda values("Natalie Barrenger", "(18)7462-3171", "Rua Vicente Nicolau, 409");
insert into agenda values("Samuel Thrower", "(591) 3392-0497", "Rua Augusta 5, 478");
insert into agenda values("Šimun Božić","(1) 4002-8922", "Rua Abraão Lincon, 9878");
insert into agenda values("Laurent Royer","(61)9999-8299", "Rua Tom Jobim, 777");
insert into agenda values("Emilly Gomes Melo", "(22)4123-3214", "Rua Padre João Crisóstomo, 1974");
insert into agenda values("Clara Azevedo Santos", "(92)3476-2388", "Rua Antioneta Galdinho, 24");
insert into agenda values("Leila Azevedo Lima", "(24)40028923", "Praça José Agrícola Paiva, 153");
 
 select * from agenda;
 select count(*) as "Informações da Agenda" from agenda;
 select concat(nome, ", de telefone ", telefone, ", tem como endereço ", endereço) as "Informações" from agenda;
 
 desc agenda;
 
 
 
 
create database clientes;
use clientes;

create table clientes(
		nome varchar(50),
		telefone varchar (20),
        endereço varchar (200),
        cpf varchar(50),
        email varchar(50),
        idade varchar(20)
        );
        
insert into clientes values ("Maria Santos Oliveira", "(11) 1234-5678", "Rua das Flores, 123, Bairro Alegria, Cidade Feliz - Estado, CEP: 12345-678", "111.111.111-11", null, 30);
insert into clientes values ("João Silva Souza", "(22) 9876-5432", "Av. Principal, 456, Bairro Centro, Cidade Grande - Estado, CEP: 98765-432", "222.222.222-22", "joaosilva@email.com", 28);
insert into clientes values ("Ana Pereira Lima", "(33) 5432-1098", "Rua dos Sonhos, 789, Bairro Esperança, Cidade Nova - Estado, CEP: 54321-876", "333.333.333-33", null, 35);
insert into clientes values ("Pedro Oliveira Rocha", "(44) 8765-4321", "Travessa das Árvores, 987, Bairro Verde, Cidade Pequena - Estado, CEP: 87654-321", "444.444.444-44", "pedrorocha@email.com", 22);
insert into clientes values ("Mariana Alves Santos", "(55) 7654-3210", "Praça da Liberdade, 345, Bairro Liberdade, Cidade Livre - Estado, CEP: 76543-210", "555.555.555-55", "marianaalves@email.com", 27);
insert into clientes values ("Lucas Rodrigues Costa", "(66) 2345-6789", "Alameda dos Sonhos, 678, Bairro Felicidade, Cidade Alegre - Estado, CEP: 23456-789", "666.666.666-66", "lucascosta@email.com", 31);
insert into clientes values ("Beatriz Oliveira Silva", "(77) 8765-4321", "Rua das Estrelas, 123, Bairro Estrelado, Cidade Estrela - Estado, CEP: 87654-321", "777.777.777-77", "beatrizsilva@email.com", 29);
insert into clientes values ("Gustavo Santos Oliveira", "(88) 5678-9012", "Avenida das Montanhas, 987, Bairro Alto, Cidade Altitude - Estado, CEP: 56789-012", "888.888.888-88", "gustavooliveira@email.com", 26);
insert into clientes values ("Sofia Lima Rodrigues", "(99) 9012-3456", "Travessa das Rosas, 345, Bairro Florido, Cidade Jardim - Estado, CEP: 90123-456", "999.999.999-99", "sofialima@email.com", 33);
insert into clientes values ("Rafael Costa Almeida", "(10) 3456-7890", "Rua dos Ventos, 678, Bairro Brisa, Cidade Fresca - Estado, CEP: 34567-890", "000.000.000-00", "rafaelalmeida@email.com", 24);
insert into clientes values ("Isabela Santos Pereira", null, "Avenida das Águas, 123, Bairro Marinho, Cidade Oceano - Estado, CEP: 67890-123", "111.111.111-11", null, 28);
insert into clientes values ("Felipe Almeida Lima", "(22) 2345-6789", "Rua das Pedras, 456, Bairro Rochoso, Cidade Montanha - Estado, CEP: 23456-789", "222.222.222-22", "felipelima@email.com", 31);
insert into clientes values ("Lara Oliveira Rodrigues", "(33) 4567-8901", "Travessa das Flores, 789, Bairro Primavera, Cidade Flor - Estado, CEP: 45678-901", "333.333.333-33", "lararodrigues@email.com", 25);
insert into clientes values ("Enzo Silva Santos", "(44) 5678-9012", "Avenida das Estrelas, 987, Bairro Celestial, Cidade Céu - Estado, CEP: 56789-012", "444.444.444-44", "enzosantos@email.com", 27);
insert into clientes values ("Lívia Costa Alves", null, "Rua das Árvores, 345, Bairro Arborizado, Cidade Natureza - Estado, CEP: 78901-234", "555.555.555-55", "liviaalves@email.com", 23);

select * from clientes;


select * from clientes where (email or telefone) is null;
select nome from clientes where (email or telefone) is null group by nome order by nome;