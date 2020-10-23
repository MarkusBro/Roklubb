/*CREATE DATABASE*/
DROP DATABASE IF EXISTS roklubb;
CREATE DATABASE roklubb;
USE roklubb;


-- CREATE TABLES
/*
    NOTE: IF YOU WANT TO DELETE SPECIFIC TABLES,
    YOU MAY HAVE TO DELETE THE TABLES WHICH DEPEND
    ON THEM FIRST!
*/

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
                        `password` Varchar(64) NOT NULL,
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


DROP TABLE IF EXISTS testResult;
CREATE TABLE `testResult` (
                              `id` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                              `user_id` SMALLINT UNSIGNED,
                              `regTime` DATETIME NOT NULL DEFAULT CURRENT_TIME,
                              `public` BOOL, -- Whether the test result is open for all to see.
                              `report` BOOL, -- Whether the test is to be part of the reports; week 44, 02, 11.
                              FOREIGN KEY (user_id) REFERENCES user (id)
                                  ON DELETE CASCADE
                                  ON UPDATE RESTRICT
);


DROP TABLE IF EXISTS `exerciseType`;
CREATE TABLE `exerciseType` (
                        `name` VARCHAR(15) PRIMARY KEY,
                        `description` VARCHAR(255)
);

DROP TABLE IF EXISTS `metricType`;
CREATE TABLE `metricType` (
                        `name` VARCHAR(7) PRIMARY KEY -- W, cm, kg, %
);


DROP TABLE IF EXISTS exercise;
CREATE TABLE `exercise` (
                        `id` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                        `name` VARCHAR(15),
                        `value` DECIMAL(4,1),
                        `metric` VARCHAR(7), -- W, cm, kg, %
                        testResult_id MEDIUMINT UNSIGNED NOT NULL,
                        FOREIGN KEY (metric) REFERENCES metricType (name)
                            ON DELETE CASCADE
                            ON UPDATE RESTRICT,
                        FOREIGN KEY (testResult_id) REFERENCES testResult (id)
                            ON DELETE CASCADE
                            ON UPDATE RESTRICT,
                        FOREIGN KEY (name) REFERENCES exerciseType (name)
                            ON DELETE CASCADE
                            ON UPDATE RESTRICT
);


DROP TABLE IF EXISTS exerciseTime;
CREATE TABLE `exerciseTime` (
                        `id` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                        `time` TIME,
                        exercise_id MEDIUMINT UNSIGNED UNIQUE NOT NULL,
                        FOREIGN KEY (exercise_id) REFERENCES exercise (id)
                            ON DELETE CASCADE
                            ON UPDATE RESTRICT
);

/*
    INSERT STANDARD VALUES
*/

INSERT INTO roklubb.class (name)
VALUES ('Senior Mann'),
       ('Senior Kvinne'),
       ('Junior A Gutter'),
       ('Junior A Jenter'),
       ('Junior B Gutter'),
       ('Junior B Jenter'),
       ('Junior C Gutter'),
       ('Junior C Jenter'),
       ('Para');

INSERT INTO roklubb.userType (name)
VALUES ('utøver'),
       ('trener'),
       ('admin');

INSERT INTO roklubb.club (name)
VALUES ('Arendals Roklub'),
       ('Kristiansand Roklubb'),
       ('Risør Ro- og Padleklubb');

INSERT INTO metricType (name)
VALUES ('Watt'),
       ('cm'),
       ('kg'),
       ('%'),
       ('antall');

INSERT INTO exerciseType (name, description)
VALUES ('5000m', 'Ro 5000m'),
       ('3000m', 'Ro 3000m'),
       ('2000m', 'Ro 2000m'),
       ('1000m', 'Ro 1000m'),
       ('60s', 'Ro 60 sekunder'),
       ('Ligg Ro', 'Ligg Ro antall kg'), -- May change into % instead of kg later.
       ('Knebøy', 'Knebøy antall kg'),
       ('Kroppshevinger', 'Kroppshevinger antall'),
       ('Sargeant', 'Sargeant høyde hopp, antall cm spenst.'),
       ('Bevegelighet','Antall bevegelighet');


/*
    INSERT TESTING VALUES
*/

INSERT INTO userInfo (email, password, fname, lname, dob, bio)
VALUES ('OlaNordmann@krsRoklubb.no', 'someLongPassword', 'Ola', 'Nordmann', '1991-02-15', 'I started rowing back in 2015, and I have been a diligent member since.'),
       ('KariNordkvinne@ArendalRoklubb.no', 'someShortPassword', 'Kari', 'Nordkvinne', '1993-05-17', 'I started rowing in 2014, and have been an avid member of the club since then.'),
       ('JohnSmith@RRPadleklubb.no', 'someMediumPassword', 'John', 'Smith', '1973-01-03', 'I am no longer in brilliant shape, but I love rowing regardless.');

INSERT INTO user (userInfo_email, userType_name, class_name, club_name)
VALUES ('OlaNordmann@krsRoklubb.no', 'utøver', 'Senior Mann', 'Kristiansand Roklubb'),
       ('KariNordkvinne@ArendalRoklubb.no', 'trener', 'Senior Kvinne', 'Arendals Roklub'),
       ('JohnSmith@RRPadleklubb.no', 'admin', 'Senior Mann', 'Risør Ro- og Padleklubb');

INSERT INTO testResult (user_id, public, report)
VALUES (1, 0,0),
       (1, 0,1),
       (1, 1,1),
       (2, 0,0),
       (2, 0,1),
       (2, 1,1),
       (3, 0,1),
       (3, 0,1),
       (3, 1,1);

-- TEST 1
INSERT INTO exercise (name, value, metric, testResult_id)
VALUES ('5000m', 391, 'Watt', 1);
INSERT INTO exerciseTime (time, exercise_id)
VALUES ('00:16:03.4', LAST_INSERT_ID());

INSERT INTO exercise (name, value, metric, testResult_id)
VALUES ('2000m', 491, 'Watt', 1);
INSERT INTO exerciseTime (time, exercise_id)
VALUES ('00:05:07.2', LAST_INSERT_ID());

INSERT INTO exercise (name, value, metric, testResult_id)
VALUES ('60s', 767, 'Watt', 1),
       ('Ligg Ro', 110, 'kg', 1),
       ('Knebøy', 150, 'kg', 1);

-- TEST 2
INSERT INTO exercise (name, value, metric, testResult_id)
VALUES ('5000m', 355, 'Watt', 2);
INSERT INTO exerciseTime (time, exercise_id)
VALUES ('00:16:35.5', LAST_INSERT_ID());

INSERT INTO exercise (name, value, metric, testResult_id)
VALUES ('2000m', 432, 'Watt', 2);
INSERT INTO exerciseTime (time, exercise_id)
VALUES ('00:06:13.5', LAST_INSERT_ID());

INSERT INTO exercise (name, value, metric, testResult_id)
VALUES ('60s', 692, 'Watt', 2),
       ('Ligg Ro', 98, 'kg', 2),
       ('Knebøy', 145, 'kg', 2),
       ('Bevegelighet', 2, 'antall', 2);

-- TEST 3
INSERT INTO exercise (name, value, metric, testResult_id)
VALUES ('5000m', 336, 'Watt', 3);
INSERT INTO exerciseTime (time, exercise_id)
VALUES ('00:16:53.4', LAST_INSERT_ID());

INSERT INTO exercise (name, value, metric, testResult_id)
VALUES ('2000m', 421.4, 'Watt', 3);
INSERT INTO exerciseTime (time, exercise_id)
VALUES ('00:06:15.9', LAST_INSERT_ID());

INSERT INTO exercise (name, value, metric, testResult_id)
VALUES ('60s', 670, 'Watt', 3),
       ('Ligg Ro', 85, 'kg', 3),
       ('Knebøy', 130, 'kg', 3),
       ('Bevegelighet', 3, 'antall', 3);