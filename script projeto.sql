create database projeto;
use projeto;
create table Mercado(
idMercado int primary key,
NomeMercado varchar(40),
Endereço varchar(40),
Bairro varchar(40),
qtdFreezer int
);
insert into Mercado values
(1 ,'Coop','Rua um dois','bairro 1'),
(2 ,'Da-vó','Rua tres quatro','bairro 2'),
(3,'Coop','Rua cinco seis','Bairro 3'),
(4 ,'Extra','Rua sete oito','Bairro 4'),
(5, 'Extra','Rua nove dez','bairro 5');

create table Freezer(
idFreezer int primary key,
Tipo varchar(40),
Tamanho varchar(40),
Mercado varchar(40),
bairro varchar(40)
);
insert into Freezer values
(100, 'Vertical','415 litros','Coop','bairro 1'),
(101, 'Horizontal','435 litros','Extra','Bairro 4');