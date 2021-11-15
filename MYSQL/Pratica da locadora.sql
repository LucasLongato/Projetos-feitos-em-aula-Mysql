/*Comando create databese e o comando para criaçao do banco de dados.*/
create database Locadora
character set utf8mb4
collate utf8mb4_0900_ai_ci;

/*Definindo o banco de dados Locadora como banco atual.*/ 
Use Locadora; 

/* Comando para criar a tabela filmes */
create table filmes(
	id int not null auto_increment,
    nome varchar (40) not null,
	primary key(id)
);
/* Descreve a estrutura da tabela filmes */
describe filmes;

insert into filmes
(nome)
values
('A Hora do Pesadelo'),
('Bem-Hur'),
('Como Eu Era antes de Você'),
('Estrada sem Lei'),
('Forrest Gump – O Contador de Histórias'),
('Harry Potter e a Ordem da Fênix'),
('It – A Coisa'),
('Minha Mãe É uma Peça'),
('O Iluminado'),
('O Resgate do Soldado Ryan'),
('Os Infiltrados'),
('Vingadores'),
('Pantera Negra'),
(' Para Todos os Garotos que Já Amei');
/* Mostra os registros da tabela */
select * from filmes;
/* Alterar a o nome da tabela filmes para o nome acervo*/
alter table filmes
rename to acervo;

/*Alterar o nome da coluna de nome para titulo */
alter table acervo
change column nome titulo varchar (40);
 
 /*Mostra a estrutura  da tabela*/
 describe acervo;
 
/* Mostra os registros da tabela com as alterações*/
select*from acervo;

/*Adicionar um nova coluna a tabela que no caso e a coluna Genero*/
alter table acervo 
add column genero ENUM ('Ação','Aventura','Comédia','Drama','Policial','Romance','Terror');

/*Adicionar um nova coluna a tabela que no caso e a coluna ano com a funçao year que serve para ano.*/
alter table acervo
add column ano year;

 /*Mostra a estrutura  da tabela com as novas colunas */
describe acervo;

select*from acervo;

/*A as atualizaçoes com as novas colunas de genero e ano para cada um titulos dos filmes*/
update acervo
set genero='Terror', ano='1986'
where id = '1';

update acervo
set genero='Aventura', ano='1960'
where id = '2';

update acervo
set genero='Romance', ano='2016'
where id = '3';

update acervo
set genero='Comédia', ano=' 2014'
where id = '4';

update acervo
set genero='Comédia', ano='1994'
where id = '5';

update acervo
set genero='Aventura', ano='2007'
where id = '6';

update acervo
set genero='Drama ', ano='2012'
where id = '7';

update acervo
set genero='Terror', ano='2017'
where id = '8';

update acervo
set genero='Comédia', ano='2013'
where id = '9';

update acervo
set genero='Terror ', ano='1980'
where id = '10';

update acervo
set genero='Drama', ano='1998'
where id = '11';

update acervo
set genero='Policial', ano='2006'
where id = '12';

update acervo
set genero='Ação', ano='2012'
where id = '13';

update acervo
set genero='Ação', ano='2018'
where id = '14';

update acervo
set genero='Romance', ano='2018'
where id = '15';

/*Mostar as novas atualizaçoes na tabela*/
select*from acervo;

/*Alterar o genero da tabela do filme estrada sem lei de comedia para genero policial*/
update acervo
set genero = 'Policial'
where id = '4';
 
 /*Mostar as novas atualizaçoes na tabela*/
 select*from acervo;
 
/*Alterar o titulo do filme Os Vingadores para o titulo 'Os Vingadores – The Avengers'*/
update acervo
set titulo = 'Os Vingadores – The Avengers'
where id = '13';
 
 /*Mostar as novas atualizaçoes na tabela*/
 select*from acervo;
 
/*Excluir o item da tabela o titulo 'Os Infiltrados'*/
delete from acervo 
where id='12';

/*Mostar as novas atualizaçoes na tabela*/
select*from acervo;

/*Excluindo os registros da tabela acervo*/
truncate acervo;

select*from acervo;

/*Excluir a tabela acervos*/
drop table acervo;

/*Exluir o banco de dados*/
drop database loucadora;

