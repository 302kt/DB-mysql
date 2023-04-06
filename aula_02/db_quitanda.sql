-- db_ para nome do banco de dados

-- CREATE para criar db
CREATE DATABASE db_quitanda;
-- drop para apagar o db
DROP DATABASE db_quitanda;
-- USE para usar o db
USE db_quitanda;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome VarChar(255) not null,
    quantidade int,
    preco decimal(6,2) not null,
    primary key(id)
    );

select * from tb_produtos;

insert into tb_produtos(nome, quantidade, preco)
values ("tomate", 40, 10.30);
insert into tb_produtos(nome, quantidade, preco)
values ("maçã", 80, 5.00);
insert into tb_produtos(nome, quantidade, preco)
values ("banana", 200, 12.00);
insert into tb_produtos(nome, quantidade, preco)
values ("uva", 200, 25.00);
insert into tb_produtos(nome, quantidade, preco)
values ("perâ", 500, 2.99);

SELECT nome, quantidade FROM tb_produtos;
SELECT * FROM tb_produtos WHERE id = 1;

update tb_produtos SET preco = 5.00 where id = 1;

delete from tb_produtos where id = 6;

alter table tb_produtos modify preco decimal (6,2);

ALTER TABLE tb_produtos ADD decricao varchar(255);
SELECT * FROM tb_produtos;
 ALTER TABLE tb_produtos DROP decricao;
 
 ALTER TABLE tb_produtos CHANGE nome nomedoproduto varchar(255);
 




