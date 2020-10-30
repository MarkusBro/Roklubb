/*Create Database*/
DROP DATABASE IF EXISTS roklubb;
CREATE DATABASE roklubb;
USE roklubb;

/*Create Tables*/

DROP TABLE IF EXISTS class;
CREATE TABLE `class` (
    `name` VARCHAR(15) PRIMARY KEY
);


DROP TABLE IF EXISTS club;
CREATE TABLE `club` (
    `name` VARCHAR(50) PRIMARY KEY
);


DROP TABLE IF EXISTS userType;
CREATE TABLE `userType` (
                            `name` VARCHAR(15) PRIMARY KEY,
                            `description` VARCHAR(255)
);


DROP TABLE IF EXISTS userInfo;
CREATE TABLE `userInfo` (
                            `email` VARCHAR(127) PRIMARY KEY,
                            `password` varchar(255) NOT NULL,
                            `fname` VARCHAR(35) NOT NULL,
                            `lname` VARCHAR(35) NOT NULL,
                            `dob` DATE NOT NULL,
                            `bio` VARCHAR(255) -- User profile bio.
    /* `imgLink` IF WE WANT THE USERS
        TO BE ABLE TO UPLOAD IMAGES,
        THEN ADD THE ATTRIBUTE HERE*/
);



DROP TABLE IF EXISTS user;
CREATE TABLE `user` (
                        `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                        `userInfo_email` VARCHAR(127) UNIQUE NOT NULL,
                        `userType_name` VARCHAR(15) NOT NULL,
                        `class_name` VARCHAR(15) NOT NULL,
                        `club_name` VARCHAR(50) NOT NULL,
                        FOREIGN KEY (userInfo_email) REFERENCES userInfo (email)
                            ON DELETE CASCADE
                            ON UPDATE RESTRICT,
                        FOREIGN KEY (userType_name) REFERENCES userType (name)
                            ON DELETE CASCADE
                            ON UPDATE RESTRICT,
                        FOREIGN KEY (class_name) REFERENCES class (name)
                            ON DELETE CASCADE
                            ON UPDATE RESTRICT,
                        FOREIGN KEY (club_name) REFERENCES club (name)
                            ON DELETE CASCADE
                            ON UPDATE RESTRICT
);

DROP TABLE IF EXISTS testBatch;
CREATE TABLE `testBatch` (
                             `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                             `startDate` DATETIME NOT NULL, -- This will be when the test batch starts.
                             `endDate` DATETIME -- This will be when the test batch ends and will be published.
);
DROP TABLE IF EXISTS testResult;
CREATE TABLE `testResult` (
                              `id` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                              `testBatch_id` SMALLINT UNSIGNED, -- A testResult will not be public unless it has a testBatch_id and has been published.
                              `user_id` SMALLINT UNSIGNED,
                              `class_name_static`VARCHAR(15) NOT NULL,
                              `5kmT` TIME,
                              `5kmW` DECIMAL(5,1),
                              `3kmT` TIME,
                              `3kmW` DECIMAL(5,1),
                              `2kmT` TIME,
                              `2kmW` DECIMAL(5,1),
                              `60sW` DECIMAL(5,1),
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
                                  ON UPDATE RESTRICT,
                              FOREIGN KEY (class_name_static) REFERENCES class(name)
                                  ON DELETE CASCADE
                                  ON UPDATE RESTRICT
);

/*EXAMPLE OF INSERT VALUES*/

INSERT INTO roklubb.userType (name)
VALUES ('utøver'), ('trener'), ('admin');

INSERT INTO roklubb.club (name)
VALUES ('Arendals Roklub'), ('Kristiansand Roklubb'), ('Risør Ro- og Padleklubb');

INSERT INTO roklubb.class (name)
VALUES ('Senior Mann'), ('Senior Kvinne'), ('Junior A Gutter'), ('Junior A Jenter'), ('Junior B Gutter'), ('Junior B Jenter'), ('Junior C Gutter'), ('Junior C Jenter'), ('Para');
INSERT INTO roklubb.testBatch (startDate)
VALUES ('2014-02-15 00:00:45'),
       ('2014-01-15 00:02:45'),
       ('2016-02-15 02:21:45');

INSERT INTO userInfo (email, password, fname, lname, dob, bio)
VALUES ('OlaNordmann@krsRoklubb.no', 'someLongPassword', 'Ola', 'Nordmann', '1991-02-15', 'I started rowing back in 2015, and I have been a diligent member since.'),
       ('KariNordkvinne@ArendalRoklubb.no', 'someShortPassword', 'Kari', 'Nordkvinne', '1993-05-17', 'I started rowing in 2014, and have been an avid member of the club since then.'),
       ('JohnSmith@RRPadleklubb.no', 'someMediumPassword', 'John', 'Smith', '1973-01-03', 'I am no longer in brilliant shape, but I love rowing regardless.');

INSERT INTO user (userInfo_email, userType_name, class_name, club_name)
VALUES ('OlaNordmann@krsRoklubb.no', 'utøver', 'Senior Mann', 'Kristiansand Roklubb'),
       ('KariNordkvinne@ArendalRoklubb.no', 'trener', 'Senior Kvinne', 'Arendals Roklub'),
       ('JohnSmith@RRPadleklubb.no', 'admin', 'Senior Mann', 'Risør Ro- og Padleklubb');
INSERT INTO roklubb.testResult (testBatch_id, user_id, class_name_static, 5kmT, 5kmW, 3kmT, 3kmW, 2kmT, 2kmW, 60sW, percentLieRow, kgLieRow, percentSquat, kgSquat, bodyLift, cmSargeant, flexibility)
VALUES (1, 1, 'Senior Kvinne', '00:19:03.2', 234, null, null, '00:07:18.1', 267, 452, 80, 60, 100, 75, null, null, 3),
       (1, 2, 'Senior Kvinne', '00:19:22.6', 224, null, null, '00:07:16.9', 269, 407, 95, 58, 115, 70, null, null, 3),
       (2, 3, 'Senior Mann' ,'00:16:59', 331, null, null, '00:06:18.4', 413, 711, 100, 92, 114, 105, null, null, 2),
       (2, 1, 'Senior Mann' ,'00:17:11.6', 319, null, null, '00:06:29.6', 379, 626, 106, 92.5, 149, 130, null, null, 3);

