CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(500) NOT NULL,
    preco DECIMAL(6,2)  NOT NULL,
    massa VARCHAR(255) NOT NULL
);

INSERT INTO tb_pizzas (nome, descricao, preco, massa) VALUES
("Calabresa", "Pizza com calabresa fatiada, cebola roxa e azeitonas pretas.", 39.90, "grossa"),
("Marguerita", "Clássica com molho de tomate, mussarela, manjericão fresco e azeite.", 42.50, "fina"),
("Portuguesa", "Presunto, ovo, cebola, ervilha, pimentão e mussarela.", 70.00, "grossa"),
("Frango com Catupiry", "Frango desfiado temperado e catupiry cremoso.", 47.90, "fina"),
("Quatro Queijos", "Mistura de mussarela, parmesão, gorgonzola e catupiry.", 100.00, "integral"),
("Prestígio", "Chocolate cremoso com coco ralado.", 43.50, "integral"),
("Vegetariana", "Tomate, brócolis, milho, palmito, cebola e azeitonas.", 74.00, "sem glúten"),
("Chocolate com Morango", "Pizza doce com creme de chocolate e morangos frescos.", 80.90, "integral");

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(255) NOT NULL,
    tamanho VARCHAR(255)  NOT NULL
);

INSERT INTO tb_categorias (categoria, tamanho) VALUES
("salgada", "pequena"),
("salgada", "media"),
("salgada", "grande"),
("doce", "media"),
("doce", "gigante");

SELECT * FROM tb_categorias;

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00 ;
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

ALTER TABLE tb_pizzas ADD categoriaid BIGINT;
ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias 
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

SELECT * FROM tb_pizzas;

UPDATE tb_pizzas SET categoriaid = 1 WHERE id = 1;
UPDATE tb_pizzas SET categoriaid = 2 WHERE id = 2;
UPDATE tb_pizzas SET categoriaid = 3 WHERE id = 3;
UPDATE tb_pizzas SET categoriaid = 1 WHERE id = 4;
UPDATE tb_pizzas SET categoriaid = 2 WHERE id = 5;
UPDATE tb_pizzas SET categoriaid = 5 WHERE id = 6;
UPDATE tb_pizzas SET categoriaid = 3 WHERE id = 7;
UPDATE tb_pizzas SET categoriaid = 4 WHERE id = 8;

SELECT nome, descricao, preco, massa, tb_categorias.categoria, tb_categorias.tamanho
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaid = tb_categorias.id;

SELECT 
    tb_pizzas.nome,
    tb_pizzas.descricao,
    tb_pizzas.preco AS preço,
    tb_pizzas.massa,
    tb_categorias.categoria,
    tb_categorias.tamanho
FROM tb_pizzas
INNER JOIN tb_categorias
    ON tb_pizzas.categoriaid = tb_categorias.id
WHERE tb_categorias.categoria = "salgada";


