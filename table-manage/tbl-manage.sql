-- create table

SHOW DATABASES;

CREATE DATABASE batch;

USE batch;

CREATE TABLE BatchStep(
	batchid INT PRIMARY KEY, -- define PRIMARY key
	batchstep VARCHAR(255),
	batchinstance VARCHAR(255)
);

SHOW TABLES;

CREATE TABLE BatchInstance(
	id INT,
	batchinstance INT,
	createdat DATE,
	endedat DATE,
	purgedat DATE,
	createdby VARCHAR(255),
	PRIMARY KEY (id,batchinstance),
	FOREIGN KEY (batchinstance)
	REFERENCES BatchStep(batchid)
	ON UPDATE  RESTRICT
	ON DELETE  CASCADE
);

SHOW TABLES;

-- auto increment
CREATE TABLE BatchLog(
	bid INT AUTO_INCREMENT PRIMARY KEY,
	batchlog VARCHAR(255),
	createdAt DATE
);

INSERT INTO BatchLog (batchlog,createdAt) VALUES
('localhost:5012',NOW()),
('localhost:5012:batchlog',NOW()),
('localhost:5012:admin',NOW()),
('localhost:5012:customer',NOW());

SELECT * FROM BatchLog;

SELECT LAST_INSERT_ID(); 

-- rename table
RENAME TABLE BatchLog  TO BatchInstanceLog;

SELECT * FROM BatchInstanceLog;

-- add column

ALTER TABLE BatchInstanceLog
ADD COLUMN updatedAt DATE AFTER createdAt;

SELECT * FROM BatchInstanceLog;

DESC BatchInstanceLog;

-- drop column
ALTER TABLE BatchInstanceLog
DROP COLUMN updatedAt;

DESC BatchInstanceLog;


