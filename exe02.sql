CREATE DATABASE db_Ecommerce;

USE db_Ecommerce;

CREATE TABLE tb_produtos;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
	preco DECIMAL(8,2) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    quantidade INT
);

INSERT INTO tb_produtos(nome,  preco, categoria, quantidade) 
values ("celular", 2300.00, "Eletrônicos", 20);
INSERT INTO tb_produtos(nome,  preco, categoria, quantidade) 
values ("Notebook", 3500.00, "Eletrônicos", 15);
INSERT INTO tb_produtos(nome,  preco, categoria, quantidade) 
values ("Blusa verde", 230.00, "Moda", 70);
INSERT INTO tb_produtos(nome,  preco, categoria, quantidade) 
values ("Jaqueta preta", 400.00, "Moda", 6);
INSERT INTO tb_produtos(nome,  preco, categoria, quantidade) 
values ("Mesa", 450.00, "Decoração", 50);
INSERT INTO tb_produtos(nome,  preco, categoria, quantidade) 
values ("Cadeira", 50.00, "Decoração", 100);
INSERT INTO tb_produtos(nome,  preco, categoria, quantidade) 
values ("Perfume", 150.00, "Beleza", 20);
INSERT INTO tb_produtos(nome,  preco, categoria, quantidade) 
values ("Skincare", 40.00, "Beleza", 25);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco < 500;
SELECT * FROM tb_produtos WHERE preco > 500;

UPDATE tb_produtos SET nome = "Bicicleta", preco = 800, categoria = "Lazer" WHERE id = 7;

SELECT * FROM tb_produtos;


