USE neptune_archive;

CREATE TABLE db_size(
	id INT AUTO_INCREMENT,
	database_name VARCHAR(50),
	database_size INT,
	createdonUTC DATETIME,
	PRIMARY KEY(id)
);



CREATE EVENT log_dbsize
ON SCHEDULE EVERY 1 MINUTE 
DO
INSERT INTO db_size (database_name,database_size,createdonUTC)
SELECT 
TABLE_SCHEMA AS DATABASE_NAME,
ROUND(SUM(DATA_LENGTH+INDEX_LENGTH) / 1024 / 1024) AS DATABASE_SIZE,
NOW() AS crdtime 
FROM information_schema.TABLES
GROUP BY TABLE_SCHEMA

SHOW EVENTS FROM neptune_archive

SELECT * FROM neptune.jsonlog




