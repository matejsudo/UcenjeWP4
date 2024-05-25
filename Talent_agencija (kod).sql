use master;
GO
drop database if exists talent_agencija;
go
create database talent_agencija;
go

use talent_agencija;

create table agenti(
sifra int not null primary key IDENTITY (1,1),
ime varchar(20) not null,
prezime varchar(20) not null,
oib char(11),
agentod datetime,
specijalizacija varchar (100)
);

create table korisnici(
sifra int not null primary key identity (1,1),
ime varchar(20) not null,
prezime varchar(20) not null,
oib char(11),
profesija varchar(100),
datumrodenja datetime,
korisnikod datetime,
email varchar(50),
agent int not null
);

create table projekti(
sifra int not null primary key identity (1,1),
naziv varchar(100) not null,
vrijednostprojekta decimal,
produkcija varchar(50),
pocetakprojekta datetime,
krajprojekta datetime
);

create table korisnicinaprojektu(
korisnik int not null,
projekt int not null
);

alter table korisnici add foreign key (agent) REFERENCES agenti(sifra);
alter table korisnicinaprojektu add foreign key (korisnik) REFERENCES korisnici(sifra);
alter table korisnicinaprojektu add FOREIGN KEY (projekt) references projekti(sifra);

select * from agenti;
select * from korisnici;
select * from projekti;
select * from korisnicinaprojektu;
 
