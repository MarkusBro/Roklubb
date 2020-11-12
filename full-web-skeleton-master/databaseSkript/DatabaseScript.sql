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
VALUES ('Arendals Roklub'), ('Kristiansand Roklubb'), ('Risør Ro- og Padleklubb');

INSERT INTO roklubb.class (name)
VALUES ('Senior Mann'), ('Senior Kvinne'), ('Junior A Gutter'), ('Junior A Jenter'), ('Junior B Gutter'), ('Junior B Jenter'), ('Junior C Gutter'), ('Junior C Jenter'), ('Para');

INSERT INTO roklubb.testBatch (startDate)
VALUES ('2018-02-15 02:21:45');


INSERT INTO user (email, userType_name, class_name, club_name,password, fname, lname, dob, bio)
VALUES ('per@krsRoklubb.no', 'utøver', 'Senior Kvinne', 'Kristiansand Roklubb', 'test', 'Per', 'Moe', '1999-02-15', 'I am a test.');


INSERT INTO roklubb.testResult (testBatch_id, user_id, class_name_static, 5kmT, 5kmW, 3kmT, 3kmW, 2kmT, 2kmW, 60sW, percentLieRow, kgLieRow, percentSquat, kgSquat, bodyLift, cmSargeant, flexibility)
VALUES (1, 1, 'Senior Mann', '00:19:03.2', 234, null, null, '00:07:18.1', 267, 452, 80, 60, 100, 75, null, null, 3);

select *  from testResult;

SELECT roklubb.user.fname, roklubb.user.lname, roklubb.user.club_name, roklubb.testResult.class_name_static,roklubb.testBatch.startDate, 5kmW, 5kmT, 2kmW, 2kmT, 60sW, percentLieRow, kgLieRow, percentSquat, kgSquat, flexibility
FROM roklubb.testResult
         INNER JOIN roklubb.user ON testResult.user_id = user.id
         INNER JOIN roklubb.testBatch on roklubb.testBatch.id = testBatch_id
where class_name_static = 'Senior Mann';

SELECT * FROM user;
