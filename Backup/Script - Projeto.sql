create database projeto;
use projeto;
create table estabelecimento(
idEstabelecimento int primary key,
nomeEstabelecimento varchar(40),
categoria varchar(40),
cnpj char (18),
endereco varchar(100),
qtdFreezer int
);
insert into estabelecimento values (000, 'Extra', 'Supermercado', '04.039.570/0001-46', 'R. Samuel Klabin, 193 - Vila Leopoldina, São Paulo - SP, 05077-015', 15),
								   (001, 'Carrefour', 'Supermercado', '75.666.798/0001-04', 'Shopping Tamboré, Av. Piracema, 669 - Tamboré, Barueri - SP, 06460-030', 20),
                                   (002, 'Wallmart', 'Supermercado', '54.866.381/0001-15', 'Alameda Araguaia, 2751 - Tamboré, Barueri - SP, 06455-906', 16),
                                   (003, 'Açougue Swift', 'Açougue', '28.172.627/0001-49', 'Rua Orfanato 62, Vila Prudente, 03131-010, São Paulo - SP', 2);
select * from estabelecimento;

create table freezer(
idFreezer int primary key,
tipo varchar(40),
tamanho varchar(40),
estabelecimento varchar(40)
);
insert into freezer values (001, 'horizontal', '100', 'seu juca'),
						   (002, 'vertical', '70', 'extra'),
					       (003, 'vertical', '50', 'sonda'),
						   (004, 'horizontal', '300', 'extra'),
						   (005, 'horizontal', '200', 'seu juca');
select * from freezer;

create table usuario(
idUsuario int primary key,
nome varchar(40),
email varchar(40),
senha varchar(40),
estabelecimento varchar(40)
);
insert into usuario values (001, 'Renato Paulino', 'renato.paulino@bandtec.com.br', 'qualquercoisa', 'Extra'),
						   (002, 'Lucas Ferreira', 'lucas.ferreira@bandtec.com.br', 'qualquercoisa1', 'Carrefour'),
                           (003, 'Dennis Barbosa', 'dennis.barbosa@bandtec.com.br', 'qualquercoisa2', 'Wallmart'),
                           (004, 'José Fabiano', 'jose.fabiano@bandtec.com.br', 'qualquercoisa3', 'Açougue Swift'),
						   (005, 'Felipe Kling', 'felipe.kling@bandtec.com.br', 'qualquercoisa4', 'Açougue Swift'),
                           (006, 'David Rafael', 'david.rafael@bandtec.com.br', 'qualquercoisa4', 'Açougue Swift'),
                           (007, 'Gabriel Alvares', 'gabriel.asilva@bandtec.com.br', 'qualquercoisa5', 'Açougue Swift');
select * from usuario;

create table sensor(
idSensor int primary key,
temperatura int,
dataHora datetime
);
insert into sensor values (1, 5, '2020-09-09 12:19:01');