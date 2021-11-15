/*E pra verificar se nao existe outro banco de dados com esse nome */
drop database if exists atividade_1;
/*Criação do banco de dados com o nome atividade_1*/
create database atividade_1;
/*Este comando e usado pra selecionar o banco*/
use atividade_1;
/*Criação da tabela VOOS com os dados que podem ser inseridos */
create table VOOS(
	id_VOOS int not null,
    voo_nome varchar (80) not null,
    voo_Tipo_do_aviao ENUM('Boeing 747', 'Boeing 767', 'Boeing 777', 'Boeing 787', 'Airbus A300/A310', 'Airbus A330', 'Airbus A340', 'Airbus A350', 'Airbus A380', 'Lockheed L-1011 Tristar', 'McDonnell Douglas DC-10', 'McDonnell Douglas MD-11', 'Ilyushin Il-86',  'Ilyushin Il-96'),
	Total_de_passageiros int,
    data_do_voo date, 
	primary key (id_VOOS)
);
/*Este comado serve para ver se esta com os nomes das colunas estão corretos*/
select*from voos;
/*Criação da tabela passageiros*/
create table passageiros(
	id_passageiros int not null,
	id_VOOS int not null,
    nome_passageiro varchar (80) not null,
	data_nascimento date, 
    data_de_compra date,
	primary key (id_passageiros),
    foreign key (id_VOOS) references passageiro(id_passageiros)
);
/*Serve tambem para verificar os nomes das colunas */
select*from passageiros;
/*Inserir os valores de destino dos voos e o tipo dos avioes e data dos voos*/
insert into VOOS
(id_VOOS,  voo_nome,  voo_Tipo_do_aviao, Total_de_passageiros, data_do_voo)
values
('1','Mexico-cidade do mexico', 'Boeing 747', '5', '30-11-2022')
('2','Italia-Roma', 'Boeing 787', '6', '10-03-2022')
('3','Nova Zelandia-Auckland', 'Airbus A330', '8', '7-09-2022')
('4','Polonia-Varsóvia', 'Boeing 767', '7', '10-01-2023')
('5','Japão-Chiba ', 'Airbus A380', '5', '10-05-2022')
/*Mostra os valores inseridos da tabela */
select*from VOOS;

/*Aqui e para inserir os valores  da tabela de passageiros com os dados */
insert into passageiros
(id_passageiros, id_VOOS, nome_passageiro, 	data_nascimento, data_de_compra)
values
('1','5','João Roberto Oliveira', '09-03-1989','05-10-2021')
('2','3','Edavino Longato', '05-06-1965','20-07-2021')
('3','3','Julia Krupka Longato', '18-11-1969','20-07-2021')
('4','5','Eduardo pereira', '12-03-1999','02-11-2021')
('5','4','Ana Carolina', '04-08-2000','02-11-2021')
('6','2','Elisa Pricila chipiura', '03-01-2001','07-06-2021')
('7','5','Vitor Fernando Mattos', '12-02-1998','02-12-2021')
('8','4','Julio Zioank', '23-03-1990','07-04-2021')
('9','2','Marley Pêcego Vilar', '29-03-1989','27-10-2021')//////////////
('10','1','Dário Lameiras Loureiro', '09-03-1989','5-10-2021')
('11','5','Ismael Caiado Barreto', '09-03-1989','5-10-2021')
('12','4','Dennis Vigário Bragança', '09-03-1989','5-10-2021')
('13','1','Sofia Parente Fontinha', '09-03-1989','5-10-2021')
('14','2','Henrique Bivar Moura', '09-03-1989','5-10-2021')
('15','5','Débora Colaço Alvim', '09-03-1989','5-10-2021')
('16','4','Alyssa Oliveira Paredes', '09-03-1989','5-10-2021')
('17','3','George Albernaz Monte', '09-03-1989','5-10-2021')
('18','3','Catalina Lira Milheirão', '09-03-1989','5-10-2021')
('19','1','Kelton Raminhos Carneiro', '09-03-1989','5-10-2021')
('20','4','Nicollas Catela Guterres', '09-03-1989','5-10-2021')
('21','2','Stacy Setúbal Manso', '09-03-1989','5-10-2021')
('22','1','Luciano Brites Serralheiro', '09-03-1989','5-10-2021')
('23','3','Ariane Quintana Feijó', '09-03-1989','5-10-2021')
('24','4','Flor Duarte Barrico', '09-03-1989','5-10-2021')
('25','2','Dayra Dutra Cartaxo', '09-03-1989','5-10-2021')
('26','3','Alexandro Feira Barrela', '09-03-1989','5-10-2021')
('27','2','Esperança Lampreia Taveiros', '09-03-1989','5-10-2021')
('28','4','Théo Queirós Cardoso', '09-03-1989','5-10-2021')
('29','3','Eliana Morgado Valcácer', '09-03-1989','5-10-2021')
('30','2','Mathias Setúbal Lagoa', '09-03-1989','5-10-2021')
('31','3','Lais Capucho Belchiorinho', '09-03-1989','5-10-2021')

/*Mostra os dados inseridos na tabela de passageiros*/
select*from passageiros;

/*Mostra os de do voo, nome dos voos, nome do passageiro, o tipo do aviao, 
a data de nascimento, o dia da compra e dara do voo e a quantidade de passageiros */
select id_passageiros, id_VOOS, voo_nome, nome_passageiro, voo_Tipo_do_aviao, data_nascimento, data_de_compra,  data_do_voo, Total_de_passageiros 
from passageiros left outer join VOOs
on VOOS.id_VOOS = passageiros.id_passageiro;







