CREATE DATABASE db_curso_da_minha_vida;

DROP DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
  id_categoria BIGINT NOT NULL AUTO_INCREMENT,
  nome_categoria VARCHAR(50) NOT NULL,
  descricao_categoria VARCHAR(100),
  PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_cursos (
  id_cursos BIGINT NOT NULL AUTO_INCREMENT,
  nome_cursos VARCHAR(50) NOT NULL,
  descricao_cursos VARCHAR(100),
  valor_cursos DECIMAL(10, 2) NOT NULL,
  carga_horaria BIGINT NOT NULL,
  id_categoria BIGINT NOT NULL,
  PRIMARY KEY (id_cursos),
  FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES 
('Programação', 'Cursos de programação'),
('Design', 'Cursos de design'),
('Marketing', 'Cursos de marketing'),
('Negócios', 'Cursos de negócios'),
('Liderança', 'Cursos de liderança');

INSERT INTO tb_cursos (nome_cursos, descricao_cursos, valor_cursos, carga_horaria, id_categoria) VALUES
('Java Básico', 'Curso de Java básico para iniciantes', 699.99, 40, 1),
('Python Intermediário', 'Curso de Python intermediário', 899.99, 60, 1),
('Web Design', 'Curso de Web Design responsivo', 799.99, 50, 2),
('Marketing Digital', 'Curso de Marketing Digital para iniciantes', 599.99, 30, 3),
('Finanças para Empreendedores', 'Curso de Finanças para Empreendedores', 999.99, 70, 4),
('Liderança Eficaz', 'Curso de Liderança Eficaz para Gerentes', 1199.99, 90, 5),
('React Avançado', 'Curso de React Avançado com Redux', 1499.99, 80, 1),
('Photoshop Avançado', 'Curso de Photoshop Avançado', 699.99, 50, 2);

SELECT * FROM tb_categorias;
SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE valor_cursos > 500;

SELECT * FROM tb_cursos WHERE valor_cursos BETWEEN 600 AND 1000;

SELECT * FROM tb_cursos WHERE nome_cursos LIKE '%J%';

SELECT tb_cursos.*, tb_categorias.nome_categoria 
FROM tb_cursos
INNER JOIN tb_categorias 
ON tb_cursos.id_categoria = tb_categorias.id_categoria; 

SELECT tb_cursos.*, tb_categorias.nome_categoria 
FROM tb_cursos 
INNER JOIN tb_categorias 
ON tb_cursos.id_categoria = tb_categorias.id_categoria 
WHERE tb_categorias.nome_categoria = 'Programação';