DROP DATABASE IF EXISTS TelefonskiImenik ;
CREATE DATABASE TelefonskiImenik;

USE TelefonskiImenik;

CREATE TABLE osoba(
	ID_Osoba INT primary key,
    Ime VARCHAR(20),
    Prezime VARCHAR(20)
);


CREATE TABLE imenik(
	ID INT primary key,
    ID_Osoba INT,
    Br_tel VARCHAR(20),
    foreign key(ID_Osoba) references osoba(ID_Osoba)
);

