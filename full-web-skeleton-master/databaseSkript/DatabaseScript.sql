/*Create Database*/
DROP DATABASE IF EXISTS roklubb;
CREATE DATABASE roklubb;
USE roklubb;

/*Create Tables*/

DROP TABLE IF EXISTS class;
CREATE TABLE class (
    name VARCHAR(15) PRIMARY KEY
);


DROP TABLE IF EXISTS club;
CREATE TABLE club (
    name VARCHAR(50) PRIMARY KEY
);


DROP TABLE IF EXISTS userType;
CREATE TABLE userType (
                          name VARCHAR(15) PRIMARY KEY,
                          description VARCHAR(255)
);





DROP TABLE IF EXISTS user;
CREATE TABLE user (
                      id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                      email VARCHAR(127) UNIQUE,
                      password varchar(255),
                      fname VARCHAR(35) NOT NULL,
                      lname VARCHAR(35) NOT NULL,
                      dob DATE NOT NULL,
                      bio VARCHAR(255),
                      userType_name VARCHAR(15) NOT NULL,
                      class_name VARCHAR(15) NOT NULL,
                      club_name VARCHAR(50) NOT NULL,

                      FOREIGN KEY (userType_name) REFERENCES userType (name)
                          ON UPDATE RESTRICT ,
                      FOREIGN KEY (class_name) REFERENCES class (name)
                          ON DELETE CASCADE
                          ON UPDATE RESTRICT,
                      FOREIGN KEY (club_name) REFERENCES club (name)
);

DROP TABLE IF EXISTS testBatch;
CREATE TABLE testBatch (
                           id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                           startDate DATETIME NOT NULL, -- This will be when the test batch starts.
                           endDate DATETIME -- This will be when the test batch ends and will be published.
);
DROP TABLE IF EXISTS testResult;
CREATE TABLE testResult (
                            id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                            testBatch_id SMALLINT UNSIGNED, -- A testResult will not be public unless it has a testBatch_id and has been published.
                            user_id SMALLINT UNSIGNED,
                            rank INTEGER,
                            score DOUBLE,
                            class_name_static VARCHAR(15) NOT NULL,
                            5kmT TIME,
                            5kmW DECIMAL(5,1),
                            3kmT TIME,
                            3kmW DECIMAL(5,1),
                            2kmT TIME,
                            2kmW DECIMAL(5,1),
                            60sW DECIMAL(5,1),
                            percentLieRow DECIMAL(4,1),
                            kgLieRow DECIMAL(4,1),
                            percentSquat DECIMAL(4,1),
                            kgSquat DECIMAL(4,1),
                            bodyLift TINYINT,
                            cmSargeant DECIMAL(4,1),
                            flexibility TINYINT,
                            weight DECIMAL(4,1),
                            height TINYINT UNSIGNED,
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
VALUES ('Arendals Roklub'), ('Kristiansand Roklubb'), ('Risør Ro- og Padleklubb'), ('NTNUI'), ('Tønsberg'), ('Horten'), ('Sjøkrigsskolen'), ('Bergens'), ('Bærum'), ('Os'), ('Christiania'), ('Haldens'), ('Ormsund'), ('Stavanger'), ('Aalesunds'), ('NSR'), ('Fredrikstad'), ('Sarpsborg');


INSERT INTO roklubb.class (name)
VALUES ('Senior Mann'), ('Senior Kvinne'), ('Junior A Gutt'), ('Junior A Jente'), ('Junior B Gutt'), ('Junior B Jente'), ('Junior C Gutt'), ('Junior C Jente'), ('Para');

INSERT INTO roklubb.testBatch (startDate)
VALUES ('2018-02-15 02:21:45');


INSERT INTO user (email, userType_name, class_name, club_name,password, fname, lname, dob, bio)
VALUES ('per@krsRoklubb.no', 'utøver', 'Senior Mann', 'Kristiansand Roklubb', 'test', 'Per', 'Moe', '1999-02-15', 'I am a test.'),
       ('ola@krsRoklubb.no','utøver','Senior Mann', 'Kristiansand Roklubb', 'test1','Ela', 'Nord','1997-05-20', 'I am also a test'),
       ('erik@krsRoklubb.no','trener','Senior Mann', 'Kristiansand Roklubb', 'test2','Erik', 'Nord','1980-01-10', 'I am also also a test'),
       ('kristine@arendalsRoklubb.no','utøver','Junior A Jente', 'Arendals Roklub', 'test3','Kristine', 'Vassenberg','2004-05-20', 'I am an Arendal test'),
       ('kari@arendalsRoklubb.no','trener','Senior Kvinne', 'Arendals Roklub', 'test4','Kari', 'Nord','1992-05-20', 'I am also an'),
       ('helene@arendalsRoklubb.no','admin','Senior Kvinne', 'Arendals Roklub', 'test5','Helene', 'Berg','1972-05-20', 'I am also'),
       ('frida@krsRoklubb.no','utøver','Senior Kvinne', 'Kristiansand Roklubb', 'test6','Frida', 'Dal','1990-05-20', 'I'),
       ('axel@arendalsRoklubb.no','admin','Senior Mann', 'Arendals Roklub', 'test7','Axel', 'Stein','1970-05-20', 'I am test'),
       ('henning@arendalsRoklubb.no','admin','Senior Mann', 'Arendals Roklub', 'test8','Henning', 'Sqaas','1970-05-20', 'I am'),
       ('sverre@krsRoklubb.no','admin','Junior A Gutt', 'Kristiansand Roklubb', 'test9','Sverre', 'Haaren','2002-05-20', 'testing');

INSERT INTO roklubb.testResult (testBatch_id, user_id, `rank`, score, class_name_static, 5kmT, 5kmW, 3kmT, 3kmW, 2kmT, 2kmW, 60sW, percentLieRow, kgLieRow, percentSquat, kgSquat, bodyLift, cmSargeant, flexibility)
VALUES (1, 1, 9, 10, 'Senior Mann', '00:17:03.2', 245, null, null, '00:09:15.1', 255, 433, 70, 50, 110, 80, null, null, 4),
       (1, 2, 8, 20, 'Senior Mann', '00:18:07.5', 222, null, null, '00:05:13.4', 275, 500, 90, 65, 95, 130, null, null, 8),
       (1, 3, 7, 30, 'Senior Mann', '00:22:05.3', 235, null, null, '00:05:17.1', 285, 444, 87, 70, 130, 90, null, null, 3),
       (1, 4, 6, 40, 'Junior A Jente', '00:11:07.5', 233, null, null, '00:11:16.1', 244, 300, 69, 55, 160, 45, null, null, 7),
       (1, 5, 5, 50, 'Senior Kvinne', '00:14:03.2', 299, null, null, '00:07:11.1', 225, 455, 90, 60, 150, 77, null, null, 5),
       (1, 6, 6, 60, 'Senior Kvinne', '00:14:15.6', 233, null, null, '00:09:14.1', 266, 455, 95, 70, 145, 65, null, null, 6),
       (1, 7, 4, 70, 'Senior Kvinne', '00:17:03.2', 245, null, null, '00:09:15.1', 255, 433, 70, 50, 110, 80, null, null, 4),
       (1, 8, 3, 80, 'Senior Mann', '00:16:45.2', 274, null, null, '00:07:15.1', 287, 466, 76, 45, 100, 70, null, null, 6),
       (1, 9, 2, 90, 'Senior Mann', '00:12:07.5', 265, null, null, '00:08:33.1', 288, 453, 90, 40, 170, 99, null, null, 3),
       (1, 10, 1, 100, 'Junior A Gutt', '00:14:15.6', 233, null, null, '00:09:14.1', 266, 455, 95, 70, 145, 65, null, null, 6);

INSERT INTO roklubb.testResult (testBatch_id, user_id, class_name_static, 5kmT, 5kmW, 3kmT, 3kmW, 2kmT, 2kmW, 60sW, percentLieRow, kgLieRow, percentSquat, kgSquat, bodyLift, cmSargeant, flexibility)
VALUES (1, 1, 'Senior Mann', '00:19:03.2', 234, null, null, '00:07:18.1', 267, 452, 80, 60, 100, 75, null, null, 3);


