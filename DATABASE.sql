DROP DATABASE monopoly_db IF EXISTS;
CREATE DATABASE monopoly_db;
USE monopoly_db;
CREATE TABLE partides(
id_partida int NO NULL,
nom VARCHAR(12),
diners int,
) ENGINE = InnoDB;

CREATE TABLE puntuacions(
id_partida int NO NULL,
nom VARCHAR(12),
diners int;
propietats int;
) ENGINE = InnoDB;


CREATE TABLE tauler(
id_partida int NO NULL,
propietats VARCHAR(28),
preu int NO NULL,
cases VARCHAR(28) ,
sort VARCHAR(16) ,
caixa VARCHAR(16) ,
preso VARCHAR(2)
) ENGINE = InnoDB;

INSERT INTO monopoly_db VALUES(
1, "Joan", 350);
INSERT INTO monopoly_db VALUES(
1, "Pere", 0);
INSERT INTO monopoly_db VALUES(
2, "Joan", 400);
INSERT INTO monopoly_db VALUES(
2, "Rosa", 0);
INSERT INTO monopoly_db VALUES(
3, "Pere", 0);
INSERT INTO monopoly_db VALUES(
3, "Rosa", 1000);
INSERT INTO monopoly_db VALUES(
4, "Joana", 0);
INSERT INTO monopoly_db VALUES(
4, "Carles", 2200);
INSERT INTO monopoly_db VALUES(
5, "Joana", 0);
INSERT INTO monopoly_db VALUES(
5, "Rosa", 900);

INSERT INTO puntuacions VALUES(
1, "Joan", 350, 4);
INSERT INTO puntuacions VALUES(
1, "Pere", 0, 1);
INSERT INTO puntuacions VALUES(
2, "Joan", 400, 1);
INSERT INTO puntuacions VALUES(
2, "Rosa", 0, 3);
INSERT INTO puntuacions VALUES(
3, "Pere", 0, 0);
INSERT INTO puntuacions VALUES(
3, "Rosa", 1000, 6);
INSERT INTO puntuacions VALUES(
4, "Joana", 0, 1);
INSERT INTO puntuacions VALUES(
4, "Carles", 2200, 2);
INSERT INTO puntuacions VALUES(
5, "Joana", 0, 0);
INSERT INTO puntuacions VALUES(
5, "Rosa", 900, 5);
