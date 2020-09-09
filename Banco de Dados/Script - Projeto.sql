create database projeto;
use projeto;
create table estabelecimento(
idEstabelecimento int primary key,
nomeEstabelecimento varchar(40),
categoria varchar(40),
cnpj int,
endereco varchar(50),
qtdFreezer int
);

create table freezer(
idFreezer int primary key,
tipo varchar(40),
tamanho varchar(40),
estabelecimento varchar(40)
);

create table usuario(
idUsuario int primary key,
nome varchar(40),
email varchar(40),
senha varchar(40),
estabelecimento varchar(40)
);

create table sensor(
idSensor int primary key,
temperatura int,
dataHora datetime
);
insert into sensor values
(1, 5, '2020-09-09 12:19:01');