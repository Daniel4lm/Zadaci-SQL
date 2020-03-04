DROP DATABASE IF EXISTS Biblioteka;
CREATE DATABASE Biblioteka;

USE Biblioteka;

DROP TABLE racun;

-- Funkija CASE(uslov) za constraint u tabelama je podrzana tek u MySQL MySQL 8.0.16 

CREATE TABLE racun(
	br_racuna INT primary key unique check(broj_racuna > 0),
    ime_musterije VARCHAR(20),
    broj_pos_knjiga INT
);

CREATE TABLE knjiga(
	broj_knjige INT primary key unique check(broj_racuna > 0),
    ime_knjige TEXT,
    status boolean
);

CREATE TABLE posudjivanje(
	br_racuna INT,
    broj_knjige INT,
    datum_posudjivanja DATE,
    foreign key(br_racuna) references racun(br_racuna),
	foreign key(broj_knjige) references knjiga(broj_knjige)
);

