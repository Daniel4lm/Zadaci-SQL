DROP DATABASE IF EXISTS ATM;
CREATE DATABASE ATM;

USE ATM;

drop table racun;
drop table transfer;

-- Funkija CASE(uslov) za constraint u tabelama je podrzana tek u MySQL MySQL 8.0.16 

CREATE TABLE racun(
	
    broj_racuna INT primary key check(broj_racuna > 0),
    ime_vlasnika VARCHAR(20) NOT NULL,
    iznos DOUBLE CHECK(iznos > 0)    
);

DESC racun;

INSERT INTO racun VALUES(44, 'Daniel', 2345.76 );
INSERT INTO racun VALUES(-34, 'Semir', 1245.54 ); -- trebalo bi raditi sa constraintom CASE()

INSERT INTO racun VALUES(12, 'Dijana', -4245.54 );

SELECT * FROM racun;

CREATE TABLE transfer(
	source_account INT CHECK(source_account > 0),
    target_account INT CHECK(source_account - iznos > 0),
    iznos DOUBLE,
    foreign key(source_account) references racun(broj_racuna)
	-- foreign key(source_account) references racun(broj_racuna)
);

