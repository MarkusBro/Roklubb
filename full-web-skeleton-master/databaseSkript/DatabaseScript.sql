/*Create Database*/
DROP DATABASE IF EXISTS roklubb;
CREATE DATABASE roklubb;
USE roklubb;

/*Create Tables*/

DROP TABLE IF EXISTS userType;
CREATE TABLE `userType` (
                            `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                            `name` varchar(15) UNIQUE not null
)ENGINE = InnoDB;

DROP TABLE IF EXISTS class;
CREATE TABLE `class` (
                         `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                         `name` varchar(15) UNIQUE not null
)ENGINE = InnoDB;

DROP TABLE IF EXISTS club;
CREATE TABLE `club` (
                        `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                        `name` varchar(50) UNIQUE not null
)ENGINE = InnoDB;

DROP TABLE IF EXISTS testBatch;
CREATE TABLE `testBatch` (
                             `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                             `regTime` DATETIME not null,
                             `class_id_static` TINYINT UNSIGNED not null,
                            -- `club_id_static TINYINT UNSIGNED not null` potentially to be used if results are going to be stuck to a club.
                            /*
                                class_id_static is there to prevent a bug where
                                moving from one class to another changes your
                                previous results to count for the new class too
                            */
                             FOREIGN KEY (class_id_static) REFERENCES class (id)
                                 ON DELETE CASCADE
                                 ON UPDATE RESTRICT/*,
                             FOREIGN KEY (club_id_static) REFERENCES club (id)
                                 ON DELETE CASCADE
                                 ON UPDATE RESTRICT*/
)ENGINE = InnoDB;

DROP TABLE IF EXISTS user;
CREATE TABLE `user` (
                        `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                        `fname` varchar(35) not null,
                        `lname` varchar(35) not null,
                        `dob` DATE not null not null,
                        `userType_id` TINYINT UNSIGNED not null,
                        `class_id` TINYINT UNSIGNED not null,
                        `club_id` TINYINT UNSIGNED not null,
                        `username` varchar(30) UNIQUE not null,
                        `password` varchar(50) not null,
                        FOREIGN KEY (userType_id) REFERENCES userType (id)
                            ON DELETE CASCADE
                            ON UPDATE R
                            ESTRICT,
                        FOREIGN KEY (class_id) REFERENCES class (id)
                            ON DELETE CASCADE
                            ON UPDATE RESTRICT,
                        FOREIGN KEY (club_id) REFERENCES club (id)
                            ON DELETE CASCADE
                            ON UPDATE RESTRICT
)ENGINE = InnoDB;

DROP TABLE IF EXISTS testResult;
CREATE TABLE `testResult` (
                              `id` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                              `testBatch_id` SMALLINT UNSIGNED,
                              `user_id` SMALLINT UNSIGNED,
                              `ex5kmT` TIME,
                              `ex5kmW` DECIMAL(5,1),
                              `ex3kmT` TIME,
                              `ex3kmW` DECIMAL(5,1),
                              `ex2kmT` TIME,
                              `ex2kmW` DECIMAL(5,1),
                              `ex60sW` DECIMAL(5,1),
                              `percentLieRow` DECIMAL(4,1),
                              `kgLieRow` DECIMAL(4,1),
                              `percentSquat` DECIMAL(4,1),
                              `kgSquat` DECIMAL(4,1),
                              `bodyLift` TINYINT,
                              `cmSargeant` DECIMAL(4,1),
                              `flexibility` TINYINT,
                              `weight` DECIMAL(4,1),
                              `height` TINYINT UNSIGNED,
                              FOREIGN KEY (testBatch_id) REFERENCES testBatch (id)
                                  ON DELETE CASCADE
                                  ON UPDATE RESTRICT,
                              FOREIGN KEY (user_id) REFERENCES user (id)
                                  ON DELETE CASCADE
                                  ON UPDATE RESTRICT
)ENGINE = InnoDB;

/*EXAMPLE OF INSERT VALUES*/

INSERT INTO roklubb.userType (name)
VALUES ('utøver'), ('trener'), ('admin');

INSERT INTO roklubb.club (name)
VALUES ('Arendals Roklub'), ('Kristiansand Roklubb'), ('Risør Ro- og Padleklubb');

INSERT INTO roklubb.class (name)
VALUES ('Senior Mann'), ('Senior Kvinne'), ('Junior A Gutter'), ('Junior A Jenter'), ('Junior B Gutter'), ('Junior B Jenter'), ('Junior C Gutter'), ('Junior C Jenter'), ('Para');

INSERT INTO roklubb.testBatch (regtime, class_id_static)
VALUES ('2014-02-15 00:00:45', 2), ('2014-01-15 00:02:45', 1), ('2016-02-15 02:21:45', 6);

INSERT INTO roklubb.user (fname, lname, doB, userType_id, class_id, club_id, username, password)
VALUES ('Leif', 'Nordmann', '2000-02-15', 1, 1, 2, 'leno1', 'passord1'),
       ('Trine', 'Norddame', '2000-04-16', 1, 2, 2, 'trno1', 'passord2'),
       ('Jane', 'Andersen', '1995-06-13', 1, 2, 3, 'jaan1', 'passord3'),
       ('Ole', 'Nilsen', '2005-03-17', 1, 5, 3, 'olni1', 'passord4'),
       ('Frida', 'Bakken', '2002-02-15', 1, 4, 1, 'frba1', 'passord5'),
       ('Aud', 'Steinhard', '1973-12-02', 2, 2, 2, 'aust1', 'passord6'),
       ('Bastian', 'Fjellrev', '1963-01-04', 3, 1, 2, 'bafj1', 'passord7');

INSERT INTO roklubb.testResult (testBatch_id, user_id, ex5kmT, ex5kmW, ex3kmT, ex3kmW, ex2kmT, ex2kmW, ex60sW, percentLieRow, kgLieRow, percentSquat, kgSquat, bodyLift, cmSargeant, flexibility)
VALUES (1, 2, '00:19:03.2', 234, null, null, '00:07:18.1', 267, 452, 80, 60, 100, 75, null, null, 3),
       (1, 6, '00:19:22.6', 224, null, null, '00:07:16.9', 269, 407, 95, 58, 115, 70, null, null, 3),
       (2, 1, '00:16:59', 331, null, null, '00:06:18.4', 413, 711, 100, 92, 114, 105, null, null, 2),
       (2, 7, '00:17:11.6', 319, null, null, '00:06:29.6', 379, 626, 106, 92.5, 149, 130, null, null, 3);