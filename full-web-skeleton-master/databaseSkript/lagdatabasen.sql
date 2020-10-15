CREATE USER 'markus' IDENTIFIED BY '12345';

CREATE DATABASE if not EXISTS oblig1;

Grant ALL privileges on oblig1.* to 'markus';

USE oblig1;


CREATE TABLE if not exists mytable(
                        JenterB_ID INTEGER UNIQUE auto_increment,
                        Rank     INTEGER ,
                        Score    NUMERIC(4,1),
                        Født     INTEGER,
                        Navn     VARCHAR(28) ,
                        Klubb    VARCHAR(16) ,
                        2000_meter  TIME ,
                        3000_meter  TIME,
                        60_meter INTEGER,
                        krhev    INTEGER,
                        sargeant NUMERIC(4,1),
                        beveg    INTEGER,
                        CONSTRAINT JenteB_ID_pk PRIMARY KEY (JenterB_ID)
);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (1,89.1,2004,'Tyra Hjemdal','Ormsund','7:49','14:39',372,40,48,2);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (2,88.2,2004,'Mia Engvik','Aalesunds','8:03.4','14:41',357,35,52,3);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (3,87.6,2004,'Linea Rådmansøy Lunde','Os','08:04.9','15:07.0',329,37,38,3);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (4,86.9,2005,'Emma Ulstein','Fana','8:10.6','12:51',297,21,39,3);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (5,86.7,2005,'Christiane Mohn','Fana','8:13.0','12:47',293,18,41,3);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg)VALUES (6,86.5,2004,'Emma Tomlinson','Drammen','8:16','1455',320,39,40,2);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (7,86.2,2005,'Marie Grøsfjeld','Stavanger Roklub','8:11.6','14:31',189,20,61,2);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (8,86.1,2004,'Tuva Jakobsen Rypdal','Fana','8:18.0','13:47',273,21,40,3);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (9,85.9,2004,'Thea Njaastad','Drammen','08:21.0','14:55',300,22,40,3);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (10,85.2,2005,'Synnevåg, Shirin','Tønsberg','08:21.0','16:09',306,18,29,3);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (11,85.1,2004,'Amelia Tamburplass','CR','8:24','13:55.2',308,7,32,3);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (12,84.8,2004,'Stine Floen','Stavanger Roklub','8:40.2','15:36',301,23,47,3);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (13,84.6,2005,'Maren Glittenberg','Bergens roklub','8:53.1','13:28',256,27,50.5,3);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (14,84.4,2004,'Weronkia Gabriela Rygielska','Os','08:35.3','15:18.0',285,0,46,2);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (15,84.0,2004,'Wiktoria Krystina Rygielska','Os','08:37.8','15:08',260,0,40,2);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (16,83.5,2005,'Ida-Sofie N. Lorgen','Aalesunds','8:53.6','15:05',267,30,51,2);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (17,83.5,2004,'Andrea Bastiansen Kvittingen','Os','08:43.4','15:10',276,10,31,2);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (18,83.2,2005,'Natalie Langlo','Aalesunds','9:03.7','15:52',230,16,39,3);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (19,82.3,2005,'Elsa Sjøvaag Marino','NSR','08:54.3','16:16',228,3,29,3);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (20,81.7,2005,'Olstad, Synne','Tønsberg','9:56','12:56',190,34,34,3);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg)VALUES (21,81.4,2005,'Christina Blom Tindlund','NSR','08:17.2','13:10',NULL,NULL,NULL,NULL);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (22,81.3,2005,'Kveil, Emma','Tønsberg','9:38','15:29',202,19,36,3);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg)VALUES (23,81.1,2004,'Anneke v.d. Hidde Sørenstuen','Bergens roklub','9:17.7','16:43',221,8,34.5,2);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (24,80.7,2005,'Karen Nakamoto Byberg','NSR','08:29.3','13:10',NULL,NULL,NULL,NULL);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg)VALUES (25,80.5,2005,'Hagemann, Simone','Tønsberg','9:37','17:13',233,13,39,2);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (26,80.0,2005,'Anna Tora Dia Lunden','NSR','09:44.7','16:16',203,6,39,2);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg)VALUES (27,79.4,2005,'Josefine Osvold Strømmen','Fana','10:12.6','16:39',167,0,32,3);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (28,86.2,2004,'Erika Roth','Aalesunds','8:35.0','13:41',261,16,48,3);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (29,75.6,2004,'Astri Nesse','Bergens roklub','8:17.6',NULL,332,17,37.5,3);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg)VALUES (30,73.8,2005,'Ane Giskeødegård','Fana',NULL,'16:4',267,5,47,3);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (31,73.8,2005,'Kamfjord, Iben','Tønsberg',NULL,'16:25',271,11,36,3);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (32,73.2,2005,'Madariaga, Alejandra','Tønsberg',NULL,'15:54',259,15,36,1);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg)VALUES (33,71.7,2005,'GiuliaEmilie','Tønsberg',NULL,'15:13',NULL,NULL,25,2);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg)VALUES (34,71.3,2004,'AnnaLuna Bjønnes Yngsdal','Ormsund',NULL,'13:33',NULL,NULL,NULL,2);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (35,70.0,2004,'Cathrine Blixt','NSR','8:28.7',NULL,NULL,NULL,NULL,NULL);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (36,69.9,2005,'Matilde Ottesen Hustad','Os','09:29.5',NULL,246,4,22,2);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (37,69.3,2005,'Andrea Willand-Evensen','Drammen','09:02.0',NULL,NULL,NULL,NULL,2);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (38,68.3,2004,'Asta Ottem','Fana','8:59.0',NULL,NULL,NULL,NULL,NULL);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (39,68.2,2005,'Lovisa Milde','Os','09:28.4',NULL,NULL,NULL,NULL,2);
INSERT INTO mytable(Rank,Score,Født,Navn,Klubb,2000_meter,3000_meter,60_meter,krhev,sargeant,beveg) VALUES (40,62.8,2005,'Silje Jære Strøm','NSR',NULL,NULL,193,1,30,3);




