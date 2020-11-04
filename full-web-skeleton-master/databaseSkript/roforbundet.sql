DROP table Utøver;
create table if not exists Utøver
(
    Utover_ID int auto_increment,
    Fornavn varchar(20),
    Etternavn varchar (20),
    Dob date,
    OpprettetDato date,
    SistEndret date,
    Klasse_ID int,
    CONSTRAINT Utover_ID_pk PRIMARY KEY (Utover_ID));


ALTER table Utøver
    ADD FOREIGN KEY (Klasse_ID) REFERENCES Klasse(Klasse_ID);

create table if not exists Klasse
(
    Klasse_ID int auto_increment not null,
    Klasse_Navn varchar (20),
    CONSTRAINT Klasse_ID_pk PRIMARY KEY (Klasse_ID));

insert into Utøver(
    Fornavn, Etternavn, Dob, OpprettetDato, SistEndret, Klasse_ID
) VALUES('Parra', 'Sol', '1999-12-1','2020-10-13','2020-10-13','5');

SELECT * from Utøver inner join Klasse K on Utøver.Klasse_ID = K.Klasse_ID;

select * from Utøver;

insert into Klasse(
    Klasse_Navn
) VALUES ('Para');