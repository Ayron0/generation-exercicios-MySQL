CREATE DATABASE db_escola;

USE  db_escola;

CREATE TABLE tb_estudantes;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
	turma INT NOT NULL,
	matricula INT NOT NULL,
    nota  DECIMAL(4,2) NOT NULL 
);

INSERT INTO tb_estudantes(nome, turma, matricula, nota) 
values ("Paulo", 2000, 56789, 8.0);
INSERT INTO tb_estudantes(nome, turma, matricula, nota) 
values ("João", 1000, 56778, 6.6);
INSERT INTO tb_estudantes(nome, turma, matricula, nota) 
values ("Ian", 2000, 56978, 5.0);
INSERT INTO tb_estudantes(nome, turma, matricula, nota) 
values ("Beatriz", 1000, 34562, 7.5);
INSERT INTO tb_estudantes(nome, turma, matricula, nota) 
values ("Caio", 2000, 34531, 8.5);
INSERT INTO tb_estudantes(nome, turma, matricula, nota) 
values ("Fernando", 1000, 31245, 9.5);
INSERT INTO tb_estudantes(nome, turma, matricula, nota) 
values ("Vitoria", 2000, 39856, 10.0);
INSERT INTO tb_estudantes(nome, turma, matricula, nota) 
values ("Ayron", 1000, 56799, 10.0);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota < 7.0;
SELECT * FROM tb_estudantes WHERE nota > 7.0;

UPDATE tb_estudantes SET nome = "Gustavo", nota = 7.3 WHERE id = 1;

SELECT * FROM tb_estudantes;