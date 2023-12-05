USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
tipo varchar (255) NOT NULL,
transmissao varchar (255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo, transmissao)
VALUES ("Livre", "Síncrono"),
("Livre", "Assincrono"),
("Graduação", "Síncrono"),
("Graduação", "Assíncrono");

SELECT * FROM tb_categorias;

CREATE TABLE tb_cursos(
id bigint AUTO_INCREMENT,
nome varchar (255) NOT NULL,
semestres bigint,
campo varchar (255) NOT NULL,
preco bigint,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_cursos (nome, semestres, campo, preco, categoria_id)
VALUES ("Administração de Empresas", 8, "Administração", 1250, 3), 
("Analista de Dados", 1, "Tecnologia", 250, 2),
("Gestão de Tempo", 1, "Administração", 150, 2),  
("Hotelaria", 8, "Administração", 1150, 3), 
("JAVA Full Stack", 1, "Tecnologia", 380, 1),
("Ciencias Contábeis", 8, "Economia", 1800, 3), 
("Power BI", 8, "AdministraçãoTecnologia", 580, 2), 
("Excel Avançado", 1, "Administração", 280, 2);

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE preco > 500;

SELECT * FROM tb_cursos WHERE preco BETWEEN 100 and 1000;

SELECT * FROM tb_cursos WHERE nome LIKE "%j%";

SELECT nome, semestres, campo, preco, tb_categorias.id
FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id;

SELECT nome, semestres, campo, preco, tb_categorias.id
FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id
WHERE campo = "Administração";












