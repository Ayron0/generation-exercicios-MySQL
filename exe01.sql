CREATE DATABASE db_RH;

USE db_RH;

CREATE TABLE tb_colaboradores;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    salario DECIMAL(8,2)  NOT NULL,
    idade INT,
    cargo VARCHAR(255) NOT NULL
);

INSERT INTO tb_colaboradores(nome,  salario, idade, cargo) 
values ("Paulo", 10000.00, 26, "Presidente");

INSERT INTO tb_colaboradores(nome,  salario, idade, cargo) 
values ("Pedro", 4000.00, 28, "Diretor");

INSERT INTO tb_colaboradores(nome,  salario, idade, cargo) 
values ("Cristina" ,7000.00, 65, "Vice Presidenta");

INSERT INTO tb_colaboradores(nome,  salario, idade, cargo) 
values ("Henrico", 1500.00, 18, "Estagiario");

INSERT INTO tb_colaboradores(nome,  salario, idade, cargo) 
values ("Julia", 1900.00, 19, "auxiliar adminstrativa");

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario < 2000;
SELECT * FROM tb_colaboradores WHERE salario > 2000;

UPDATE tb_colaboradores SET salario = 2500.00, cargo = "Gerente" WHERE id = 5;

SELECT * FROM tb_colaboradores;
