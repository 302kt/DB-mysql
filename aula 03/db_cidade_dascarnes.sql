CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id_categoria BIGINT NOT NULL AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria VARCHAR(100) NULL,
    PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_produtos (
    id_produto BIGINT NOT NULL AUTO_INCREMENT,
    nome_produto VARCHAR(50) NOT NULL,
    descricao_produto VARCHAR(100) NULL,
    preco_produto DECIMAL(8,2) NOT NULL,
    id_categoria BIGINT NOT NULL,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES
    ('Carnes', 'Produtos de origem animal'),
    ('Aves', 'Produtos de origem animal'),
    ('Peixes', 'Produtos de origem animal'),
    ('Frutas', 'Produtos de origem vegetal'),
    ('Verduras', 'Produtos de origem vegetal');
    
    INSERT INTO tb_produtos (nome_produto, descricao_produto, preco_produto, id_categoria)
VALUES
    ('Picanha', 'Corte bovino', 60.00, 1),
    ('Frango assado', 'Ave assada', 25.00, 2),
    ('Salmão', 'Peixe fresco', 80.00, 3),
    ('Maçã', 'Fruta fresca', 3.50, 4),
    ('Alface', 'Folha fresca', 2.00, 5),
    ('Costela suína', 'Corte suíno', 45.00, 1),
    ('Linguado', 'Peixe fresco', 70.00, 3),
    ('Manga', 'Fruta fresca', 5.00, 4);
    
SELECT *
FROM tb_produtos
WHERE preco_produto > 50.00;

SELECT *
FROM tb_produtos
WHERE preco_produto BETWEEN 50.00 AND 150.00;

SELECT *
FROM tb_produtos
WHERE nome_produto LIKE '%C%';

SELECT tb_produtos.*, tb_categorias.nome_categoria 
FROM tb_produtos
INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT tb_produtos.*, tb_categorias.nome_categoria 
FROM tb_produtos 
INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id_categoria 
WHERE tb_categorias.nome_categoria = 'Aves';



