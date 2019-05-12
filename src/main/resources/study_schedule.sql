CREATE DATABASE study_schedule;
USE study_schedule;
/**Create tables**/
CREATE TABLE IF NOT EXISTS doctor (
	id INT UNSIGNED NOT NULL,
    name VARCHAR(30) NOT NULL DEFAULT '',
    PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS room (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL DEFAULT '',
    PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS patient (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL DEFAULT '',
    sex VARCHAR(30),
    date_of_birth DATE,
    PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS study (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    patient VARCHAR(30) NOT NULL DEFAULT '',
    description VARCHAR(45) DEFAULT '' NOT NULL,
    status VARCHAR(30) NOT NULL,
    planned_start_time VARCHAR(30) NOT NULL,
    estimated_end_time VARCHAR(30) DEFAULT '',
    PRIMARY KEY (id)
);

/*insert data*/

/**doctor table**/
INSERT INTO doctor VALUES(234,'Dr.Steve');
INSERT INTO doctor VALUES(123,'Dr.Ryan');
INSERT INTO doctor VALUES(250,'Dr.Mike');
INSERT INTO doctor VALUES(180,'Dr.Samantha');

/**room table**/
INSERT INTO room VALUES(10,'ocean');
INSERT INTO room VALUES(NULL,'oasis');
INSERT INTO room VALUES(NULL,'mirage');


/**patient table**/
INSERT INTO patient VALUES(1,'William','M','1984-09-28');
INSERT INTO patient VALUES(NULL,'Smith','M','1989-06-18');
INSERT INTO patient VALUES(NULL,'Michael','M','1970-10-15');
INSERT INTO patient VALUES(NULL,'Miranda','F','1974-08-10');

/**study table**/
INSERT INTO study VALUES(1,'Miranda','general checkup','planned','2019-05-25 18:00','');
INSERT INTO study VALUES(NULL,'William','eye checkup','in_progress','2019-05-05 11:00','2019-05-26 20:00');
INSERT INTO study VALUES(NULL,'Michael','general checkup','planned','2019-05-29 17:00','');
INSERT INTO study VALUES(NULL,'Miranda','dental checkup','finished','2019-05-03 18:00','2019-05-03 22:00');

/**select**/
select * from doctor;
select * from room;
select * from patient;
select * from study;
