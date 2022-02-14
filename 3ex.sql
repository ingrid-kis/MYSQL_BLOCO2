USE db_escola;

CREATE TABLE tab_corpo_discente(
id_matricula BIGINT (5) auto_increment,
nome VARCHAR(50) not null,
serie CHAR(1) not null,
turma CHAR(2) not null,
materia VARCHAR(20) not null,
nota_semestre double not null,
PRIMARY KEY (id_matricula)
);

-- popula tabela com até 8 dados
INSERT INTO tab_corpo_discente(nome, serie, turma, materia, nota_semestre)
VALUES ("Ana Clara Mendonça", 5, 12, "Língua Portuguesa", 10);
INSERT INTO tab_corpo_discente(nome, serie, turma, materia, nota_semestre)
VALUES ("Maria Aparecida Ramos", 5, 4, "Língua Estrangeira", 7);
INSERT INTO tab_corpo_discente(nome, serie, turma, materia, nota_semestre)
VALUES ("Gustavo Alves Santos", 5, 10, "Língua Portuguesa", 5.7);
INSERT INTO tab_corpo_discente(nome, serie, turma, materia, nota_semestre)
VALUES ("Marcos Junqueira Silva", 5, 8, "Língua Portuguesa", 8.9);
INSERT INTO tab_corpo_discente(nome, serie, turma, materia, nota_semestre)
VALUES ("Marisa Amélia Reis", 5, 2, "Língua Estrangeira", 4.6);
INSERT INTO tab_corpo_discente(nome, serie, turma, materia, nota_semestre)
VALUES ("João Carlos Dias e Gomes", 5, 13, "Língua Portuguesa", 9.5);
INSERT INTO tab_corpo_discente(nome, serie, turma, materia, nota_semestre)
VALUES ("Alexandra Barbosa Morais", 5, 2, "Língua Estrangeira", 9.2);

SELECT * FROM tab_corpo_discente; -- visualiza tabela inteira

SELECT * FROM  tab_corpo_discente WHERE nota_semestre > 7.0; -- visualiza notas > 7
 
SELECT * FROM  tab_corpo_discente WHERE nota_semestre < 7.0; -- visualiza notas < 7

UPDATE tab_corpo_discente SET nota_semestre = 5.0 WHERE id_matricula=5; -- atualiza dado Nota no ID 5

SELECT * FROM tab_corpo_discente;