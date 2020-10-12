create database projeto;
use projeto;
create table estabelecimento(
idEstabelecimento int primary key,
nomeEstabelecimento varchar(40),
categoria varchar(40),
cnpj char (18),
endereco varchar(100)
);
insert into estabelecimento values (001, 'Extra', 'Supermercado', '04.039.570/0001-46', 'R. Samuel Klabin 193 Vila Leopoldina São Paulo  SP 05077-015',15),
								   (002, 'Carrefour', 'Supermercado', '75.666.798/0001-04', 'Shopping Tamboré, Av. Piracema, 669 - Tamboré, Barueri - SP 06460-030', 20),
                                   (003, 'Wallmart', 'Supermercado', '54.866.381/0001-15', 'Alameda Araguaia, 2751 - Tamboré, Barueri - SP, 06455-906', 16),
                                   (004, 'Açougue Swift', 'Açougue', '28.172.627/0001-49', 'Rua Orfanato 62, Vila Prudente, 03131-010 São Paulo - SP', 50),
								   (005, 'Açougue Swift', 'Açougue', '28.172.627/0001-49', 'Rua Orfanato 62, Vila Prudente, 03131-010, São Paulo - SP', 50),
                                   (006, 'Açougue Swift', 'Açougue', '28.172.627/0001-49', 'Rua Orfanato 62, Vila Prudente, 03131-010, São Paulo - SP', 50),
                                   (007, 'Açougue Swift', 'Açougue', '28.172.627/0001-49', 'Rua Orfanato 62, Vila Prudente, 03131-010, São Paulo - SP', 50),
                                   (008, 'Açougue Tennese', 'Açougue', '48.375.273/0001-19', 'Estr. das Lágrimas' '1396' 'Cidade Nova Heliópolis São Paulo - SP 04244-000',10),
                                   (009, 'Açougue Tennesse', 'Açougue', '48.375.273/0001-19', 'Estr. das Lágrimas' '1396' 'Cidade Nova Heliópolis'' São Paulo - SP' '04244-000',10),
                                   (010, 'Pão de açucar', 'Supermercado', '10.122.258/0001-28','Rua Juventus 337 Parque da Mooca São Paulo - SP 03124-020',13),
                                   (011, 'Pão de Açucar', 'Supermercado', '10.122.258/0001-28','Rua Juventus 337 Parque da Mooca São Paulo - SP 03124-020',13),
                                   (012, 'Açougue Mencarini', 'Açougue', '33.322.993/0001-99','Av Marginal Direita do Tietê 500 Vila Jaguara São Paulo - SP 05118-100',20),
                                   (013, 'Açougue Mencarini', 'Açougue', '33.322.993/0001-99','Av Marginal Direita do Tietê 500  Vila Jaguara São Paulo - SP 05118-100',20);

select * from estabelecimento;

create table freezer(
idFreezer int primary key,
tipo varchar(40),
tamanho varchar(40),
estabelecimento varchar(40),
fkEstabelecimentoFreezer int,
foreign key (fkEstabelecimentoFreezer) references estabelecimento(idEstabelecimento)
);
insert into freezer values (001, 'horizontal', 100, 'Swift'),
						   (002, 'vertical', 70, 'extra'),
					       (003, 'vertical', 50, 'sonda'),
						   (004, 'horizontal', 300, 'extra'),
						   (005, 'horizontal', 200, 'Swift'),
                           (006,'vertical',200,'Carrefour'),
                           (007,'horizontal',50,'Walmart'),
                           (008,'vertical',200,'Swift'),
                           (009,'vertical',100,'Mencarini'),
                           (010,'horizontal',150,'Pão de Açucar');
select * from freezer;

create table sensor (
idSensor int primary key,
temperatura varchar (5),
datahora varchar (20),
fkFreezer int,
foreign key (fkFreezer) references freezer(idFreezer)
);
insert into sensor values (000,'5°C', '2020/09/25 12:00');


create table usuario(
idUsuario int primary key,
nome varchar(40),
email varchar(40),
senha varchar(40),
fkEstabelecimentoUsuario int,
foreign key (fkEstabelecimentoUsuario) references estabelecimento(idEstabelecimento)
);
insert into usuario values (001, 'Renato Paulino', 'renato.paulino@bandtec.com.br', 'qualquercoisa', 'Extra'),
						   (002, 'Lucas Ferreira', 'lucas.ferreira@bandtec.com.br', 'qualquercoisa1', 'Carrefour'),
                           (003, 'Dennis Barbosa', 'dennis.barbosa@bandtec.com.br', 'qualquercoisa2', 'Wallmart'),
                           (004, 'José Fabiano', 'jose.fabiano@bandtec.com.br', 'qualquercoisa3', 'Açougue Swift'),
						   (005, 'Felipe Kling', 'felipe.kling@bandtec.com.br', 'qualquercoisa4', 'Açougue Swift'),
                           (006, 'David Rafael', 'david.rafael@bandtec.com.br', 'qualquercoisa5', 'Açougue Swift'),
                           (007, 'Gabriel Alvares', 'gabriel.asilva@bandtec.com.br', 'qualquercoisa6', 'Açougue Swift'),
                           (008,'Eduardo Verri', 'eduardo.verri@bandtec.com.br', 'qualquercoisa7','Açougue Tennessee'),
                           (009,'Celia Taniwaki','celia.taniwaki@bandtec.com.br','qualquercoisa8','Açougue Tennessee'),
                           (010,'Thiago Gimenez','thiago.bonacelli@bandtec.com.br','qualquercoisa9','Pão de Açucar'),
                           (011,'Fernando Brandaõ','fernando.brandão@bandtec.com.br','qualquercoisa10','Pão de Açucar'),
                           (012,'Rocky Balboa','rock.Balboa@bandtec.com.br', 'qualquercoisa11', 'Mencarini'),
                           (013,'Luís Inácio','luis.inacio@bandtec.com.br','qualquercoisa12','Mencarini');
select * from usuario;