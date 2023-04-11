DROP Database db_pizzaria_legal;

CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
  id_categoria INT NOT NULL AUTO_INCREMENT,
  nome_categoria VARCHAR(255) NOT NULL,
	PRIMARY KEY (id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
  ('Salgadas'),
  ('Doces'),
  ('Vegetarianas'),
  ('Queijos'),
  ('Especiais');

CREATE TABLE tb_pizzas (
id_pizza bigint NOT NULL AUTO_INCREMENT,
  nome_pizza VARCHAR (255) NOT NULL,
  descricao_pizza VARCHAR(255),
  valor_pizza DECIMAL(10,2) NOT NULL,
  tamanho_pizza VARCHAR(255) NOT NULL,
  id_categoria INT NOT NULL,
  PRIMARY KEY (id_pizza),
  FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_pizzas (nome_pizza, descricao_pizza, valor_pizza, tamanho_pizza, id_categoria) VALUES
  ('Marguerita', 'Molho de tomate, mussarela, manjericão', 38.00, 'Média', 1),
  ('Pepperoni', 'Molho de tomate, mussarela, pepperoni', 40.00, 'Grande', 1),
  ('Brócolis', 'Molho de tomate, mussarela, brócolis', 48.00, 'Média', 3),
  ('Doce de Leite', 'Doce de leite, mussarela', 35.00, 'Pequena', 2),
  ('Frango Catupiry', 'Molho de tomate, frango, catupiry', 48.00, 'Grande', 1),
  ('Quatro Queijos', 'Molho de tomate, mussarela, gorgonzola, parmesão, provolone', 57.00, 'Grande', 4),
  ('Calabresa', 'Molho de tomate, mussarela, calabresa', 30.00, 'Média', 1),
  ('Chocolate', 'Chocolate, mussarela', 20.00, 'Pequena', 2);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE valor_pizza > 45.00;

SELECT * FROM tb_pizzas WHERE valor_pizza BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

SELECT tb_pizzas.*, tb_categorias.nome_categoria 
FROM tb_pizzas 
INNER JOIN tb_categorias 
ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT tb_pizzas.*, tb_categorias.nome_categoria 
FROM tb_pizzas 
INNER JOIN tb_categorias 
ON tb_pizzas.id_categoria = tb_categorias.id_categoria 
WHERE tb_categorias.nome_categoria = 'Doces';