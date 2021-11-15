/*Verificaççao se não existe outro banco de dados*/
drop database if exists atividade_2;
/*Criação do banco de dados atividades_2*/
create database atividade_2;
/*Este comando e usado pra selecionar o banco*/
use atividade_2;
/*Criação a tabela de naçoes que seram os dados inseridos*/
create table naçoes(
	id_naçoes int not null,
    naçao_nome varchar (80) not null,
    continente varchar (60) not null,
    primary key (id_naçoes)
);
/*Ira Mostrar as colunas da tabela naçoes*/
select*from naçoes;
/*Cria a tabela de estados com os dados dos estados inseridos*/
create table estado(
	id_naçoes int not null,
    id_estado int not null,
    Estado_nome varchar (80) not null,
    primary key (id_naçoes),
    foreign key (id_naçoes) references estado(id_estado)
);
/*Ira mostrar as colunas e a tabela com o que sera inserido */
select*from estado;
/*Cria a tabela cidades */
create table cidades(
 id_cidades int not null,
 id_naçoes int not null,
 id_estado int not null,
 nome_cidade varchar (80) not null,
 primary key (id_cidade),
 foreign key (id_estado) references cidade(id_cidade)
);
/*Ira mostra a tabela com o que devera ser inserido*/
select*from cidades;
/*Com esse comando sera inserido os dados da tabela naçoes*/
insert into naçoes
(id_naçoes, naçao_nome, continente)
values
('1','Brasil','America')
('2','Australia','Oceania')
('3','Estados Unidos','America')
('4','italia','Europa')
/*Ira mostrar a tabela com os dados inseridos na tabela nações*/
select*from naçoes;
/*Sera inserido os dados da tabela estados*/
insert into estado
(id_naçoes, id_estado,Estado_nome)
values
('1','1','Paraná')
('2','2','Austrália Meridiona')
('3','3','Flórida')
('4','4','Cuneo')
('5','4','Sicília')
('6','1','Amazonas')
('7','2','Queensland')
('8','3','Dakota do Norte')
('9','4','Vêneto')
('10','2','Utah')
('11','1','Santa Catarina')
('12','2','Nova Gales do Sul ')
/*Mostrara o que foi inserido na tabela estados*/
select*from estado;
/*Sera inserido os dados da tabela de cidades*/
insert into cidades
(id_cidades, id_naçoes, id_estado, nome_cidade)
values
('1','1','1','Campo Largo')
('2','1','7','Manaus')
('3','2','2','Adelaide')
('4','3','3','Miami')
('5','2','7','Mount Isa')
('6','4','4','Bra')
('7','2','7','Mackay')
('8','2','2','Port Lincoln')
('9','3','8','Bismarck',)
('10','2','12','Albury')
('11','2','12','Ballina')
('12','3','3','Tampa')
('13','3','8','Mandan')
('14','1','1','Turvo')
('15','4','9','Pádua')
('16','2','2','Nuriootpa')
('17','4','4','Cherasco')
('18','1','11','Blumenau')
('19','2','10','Ogden')
('20','3','3','Jacksonville')
('21','1','11','Urubici',)
('22','2','12','Sydney.')
('23','1','11','Florianópolis')
('24','4','5','Agrigento')
('25','4','9','Veneza, ')
('26','2','12','Newcastle')
('27','1','1','Londrina')
('28','2','10','Park City')
('29','4','5','Siracusa')
('30','3','8','Valley City')
('31','1','7','Anamã')
('32','4','9','Verona')
('33','2','10','Moab')
('34','2','7','Longreach')
('35','4','5',' Palermo')
('36','4','4','Canosio')
/*Mostrara a tabela com os dados inseridos na tabela cidades*/
select*from cidades;

/*Ira mostrar os dados e seus correspondentes das tabelas naçoes, estados e cidades */
select  naçoes.id_naçoes, naçoes.naçao_nome, estados.id_estado, estados.Estado_nome, cidades.id_cidades, cidades.nome_cidade
from naçoes,estado,cidades
where naçoes.id_naçoes = estados.id_estado and estados.id_estado = cidades.id_cidades;

/*Ira mostrar os dados inseridos na tabela naçoes e estados*/
select  naçoes.id_naçoes, naçoes.naçao_nome, estados.id_estado, estados.Estado_nome
from naçoes join estado
where naçoes.id_naçoes = estados.id_estado;

/*ira mostrar os dados inseridos na tabela naçoes e cidades */
select  naçoes.id_naçoes, naçoes.naçao_nome,  cidades.id_cidades, cidades.nome_cidade
from naçoes join cidades
where naçoes.id_naçoes = cidades.id_cidades;

/*Ira mostrar os dados da tabela de estados  e cidades */
select  estados.id_estado, estados.Estado_nome, cidades.id_cidades, cidades.nome_cidade
from estados join cidades
where estados.id_estado = cidades.id_cidades;