CREATE DATABASE futebol;

USE futebol;

CREATE TABLE tbclube (
id_clube int PRIMARY KEY,
nome_clube varchar (40),
fundação_clube date)

CREATE TABLE tbjogadores (
id_jogador int PRIMARY KEY,
nome_jogador VARCHAR (40),
data_jogador date,
posicao varchar (10),
numero_jogador int,
id_clube int FOREIGN KEY REFERENCES tbclube(id_clube))


CREATE TABLE tbpartidas (
id_partida int PRIMARY KEY,
id_visitante int,
id_madante int)

CREATE TABLE tbgols (
id_gol int PRIMARY KEY,
minuto varchar (30),
id_jogador int FOREIGN KEY REFERENCES tbjogadores(id_jogador),
id_partida int FOREIGN KEY REFERENCES tbpartidas(id_partida))

INSERT INTO tbclube (id_clube,nome_clube,fundação_clube)
VALUES (110,'Barcelona','12.11.1899'),
		(150,'Juventos','01.09.1989'),
		(200,'Liverpool','11.09.1892')

INSERT INTO tbjogadores(id_jogador,nome_jogador,data_jogador,posicao,numero_jogador,id_clube)
VALUES (90,'Sergio Aguero','01.07.1979','atacante',9,150),
		(105,'Mohamed Salah','10.09.1976','atacante',11,200),
		(85,'Paulo dybala','06.03.1996','atacante',10,150)

INSERT INTO tbpartidas(id_partida,id_madante,id_visitante)
VALUES (450,200,150),
		(320,110,200),
		(405,150,110)

INSERT INTO tbgols(id_gol,minuto,id_jogador,id_partida)
VALUES (990,'12 min do primeiro tempo',105,450),
		(1005,'29 min do segundo tempo',105,450),
		(1100,'40 min do primeiro tempo',85,405)

select * from tbclube
select * from tbjogadores
select * from tbpartidas
select * from tbgols

UPDATE tbjogadores SET nome_jogador = 'Alvaro Morata' ,data_jogador = '01.07.1979' ,posicao = 'atacante' ,numero_jogador = 9 ,id_clube = 150 where id_jogador = 90
INSERT INTO tbclube (id_clube,nome_clube,fundação_clube)
VALUES (690,'Real Madrid','03.06.1902')
INSERT INTO tbjogadores(id_jogador,nome_jogador,data_jogador,posicao,numero_jogador,id_clube)
VALUES (160,'Alisson','12.05.1992','atacante',19,200)
UPDATE tbclube SET fundação_clube = '08.12.1994' ,nome_clube = 'Liverpool' where id_clube = 200
UPDATE tbgols SET minuto = '30 min do primeiro tempo' ,id_jogador = 105 ,id_partida = 450 where id_gol = 990