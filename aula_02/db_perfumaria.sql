create database db_perfumaria;
use db_perfumaria;

create table tb_produtos(
	id bigint auto_increment,
    produto varchar (255) not null,
    marca varchar (255) not null,
    preco decimal (6,2) not null,
    quantidade int not null, 
    validade varchar (100) not null, 
    primary key (id)
    );
    
    select * from tb_produtos;
    
insert into tb_produtos(produto, marca, preco, quantidade, validade)
values ("perfume", "paco rabanne", 688.00, 230, "2026");
insert into tb_produtos(produto, marca, preco, quantidade, validade)
values ("sabonete", "lancôme", 30.00, 500, "2027");
insert into tb_produtos(produto, marca, preco, quantidade, validade)
values ("perfume", "dior", 620.00, 400, "2029");
insert into tb_produtos(produto, marca, preco, quantidade, validade)
values ("perfume", "212", 700.00, 300, "2028");
insert into tb_produtos(produto, marca, preco, quantidade, validade)
values ("perfume", "lancôme", 468.00, 340, "2026");
insert into tb_produtos(produto, marca, preco, quantidade, validade)
values ("perfume", "carolina herrera", 300.00, 250, "2026");
insert into tb_produtos(produto, marca, preco, quantidade, validade)
values ("creme", "giovanna baby", 40.00, 300, "2030");
insert into tb_produtos(produto, marca, preco, quantidade, validade)
values ("desodorante", "giovanna baby", 100.00, 380, "2025");

ALTER TABLE tb_produtos CHANGE validade anovalidade varchar(255);

select * from  tb_produtos where preco > 500.00;
select * from  tb_produtos where preco < 500.00;

update tb_produtos SET quantidade = 260 where id = 6;





