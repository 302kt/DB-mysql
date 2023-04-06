create database db_rh;
use db_rh;

create table tb_colaboradores(
	id bigint auto_increment,
    nome VarChar (255) not null,
    cargo VarChar (255) not null,
    situacao VarChar (15) not null,
    horariodetrabalho VarChar (15) not null,
    salario decimal (6,2) not null,
    primary key(id)
    );
    
    select * from tb_colaboradores;
    
    insert into tb_colaboradores(nome, cargo, situacao, horariodetrabalho, salario)
    values ("katarina", "dev. Jr", "ativa", "manhã", 4200.00);
    insert into tb_colaboradores(nome, cargo, situacao, horariodetrabalho, salario)
    values ("thiago", "dev. Pleno", "ativo", "tarde", 8000.50);
    insert into tb_colaboradores(nome, cargo, situacao, horariodetrabalho, salario)
    values ("nicole", "dev. Pleno", "ativo", "manhã", "8200.50");
    insert into tb_colaboradores(nome, cargo, situacao, horariodetrabalho, salario)
    values ("amanda", "dev. Pleno", "ativa", "tarde", "9100.50");
    insert into tb_colaboradores(nome, cargo, situacao, horariodetrabalho, salario)
    values ("tamara", "assistente adm", "inativa","inativa", "0");
    
    delete from tb_colaboradores where id = 1;
    
    select * from  tb_colaboradores where salario > 2000.00;
    select * from  tb_colaboradores where salario < 2000.00;
    
    update tb_colaboradores SET salario = 4500.00 where id = 2;
    
    
    
    
    
    

    
    
    
    



