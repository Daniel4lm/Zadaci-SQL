DROP DATABASE IF EXISTS ATM;
CREATE DATABASE ATM;

drop table racun;

CREATE TABLE racun(
	
    broj_racuna INT primary key auto_increment check(broj_racuna > 0),
    ime_vlasnika VARCHAR(20) NOT NULL,
    iznos DOUBLE CHECK(iznos > 0)
    
);

CREATE TABLE transfer(
	source_account INT CHECK(source_account > 0),
    target_account INT CHECK(source_account - iznos > 0),
    iznos DOUBLE,
    foreign key(source_account) references racun(broj_racuna)
	-- foreign key(source_account) references racun(broj_racuna)
);

