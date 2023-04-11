DROP DATABASE db_escola;
create database db_escola;
use db_escola;


create table tb_notas(
	id bigint auto_increment,
    nome varchar (255),
    idade int (10),
    ano int (10),
    sala char(10),
    media int (10),
    primary key (id)
    );
    
    select * from tb_notas;
    




