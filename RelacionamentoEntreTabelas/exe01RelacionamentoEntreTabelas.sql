CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    classe VARCHAR(255) NOT NULL,
    descricao VARCHAR(500) NOT NULL
);

INSERT INTO tb_classes(classe, descricao) VALUE("Guerreiro", "Defesa sólida e combate corpo a corpo"),
("Arqueiro", "Precisão à distância e agilidade"),
("Mago", "Poderosos feitiços de ataque e controle"),
("Assassino", "Velocidade, furtividade e golpes críticos"),
("Paladino", "Combate corpo a corpo com cura e suporte");

SELECT * FROM  tb_classes;

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    ataque INT NOT NULL,
    defesa INT NOT NULL,
    magia INT NOT NULL
);

INSERT INTO tb_personagens(nome, ataque, defesa, magia) 
VALUE("Baldur", 1900, 3000, 1000),
("Elra", 2100, 1200, 900),
("Mordekai", 1400, 1300, 4000),
("Caelen", 3500, 1250, 700),
("Seracaus", 2200, 2900, 1500),
("Foguetinho", 3900, 3000, 2100),
("Rajadao", 2950, 1600, 1200),
("FeioQSo", 1200, 1999, 3399);


SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

ALTER TABLE tb_personagens ADD classeid BIGINT;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes 
FOREIGN KEY (classeid) REFERENCES tb_classes (id);

SELECT * FROM tb_personagens;

UPDATE tb_personagens SET classeid = 1 WHERE id = 1;
UPDATE tb_personagens SET classeid = 2 WHERE id = 2;
UPDATE tb_personagens SET classeid = 3 WHERE id = 3;
UPDATE tb_personagens SET classeid = 4 WHERE id = 4;
UPDATE tb_personagens SET classeid = 5 WHERE id = 5;
UPDATE tb_personagens SET classeid = 2 WHERE id = 6;
UPDATE tb_personagens SET classeid = 1 WHERE id = 7;
UPDATE tb_personagens SET classeid = 4 WHERE id = 8;


SELECT nome, ataque, defesa, magia, tb_classes.classe, tb_classes.descricao
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id;


SELECT 
	tb_classes.classe,
    tb_classes.descricao AS descrição,
	tb_personagens.nome, 
    tb_personagens.ataque, 
    tb_personagens.defesa, 
    tb_personagens.magia
FROM tb_personagens INNER JOIN tb_classes
ON  tb_classes.id = tb_personagens.classeid
WHERE  tb_classes.classe = "Guerreiro";




