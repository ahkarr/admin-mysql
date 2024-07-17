SHOW DATABASES;

USE neptune;

CREATE TABLE log(
	id INT AUTO_INCREMENT,
	log VARCHAR(255),
	createdat DATETIME,
	PRIMARY KEY(id)
);

CREATE EVENT log_init
ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 MINUTE 
ON COMPLETION PRESERVE 
DO
INSERT INTO log (log,createdat) VALUES
(uuid(),NOW());

SELECT * FROM log;

SHOW EVENTS FROM neptune;

DROP EVENT log_init;

CREATE EVENT log_init
ON SCHEDULE EVERY 1 MINUTE 
DO
INSERT INTO log (log,createdat) VALUES
(uuid(),NOW());

CREATE TABLE jsonlog(
	id INT AUTO_INCREMENT,
	jsonbody JSON,
	createdat DATETIME,
	createdby VARCHAR(50),
	PRIMARY KEY (id)
);

CREATE EVENT jsonlog_init
ON SCHEDULE EVERY 30 SECOND 
DO
INSERT INTO jsonlog (jsonbody,createdat,createdby) VALUES
(JSON_OBJECT('package_id',uuid(),'timestamp',now()),now(),'neptune-admin');

SELECT * FROM neptune.jsonlog;


