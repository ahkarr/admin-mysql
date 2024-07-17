SHOW DATABASES;

USE neptune;

SHOW TABLES;

SELECT * FROM neptune.ApiTransaction 
SELECT COUNT(*) FROM neptune_archive.ApiTransactionLog
SHOW EVENTS FROM neptune

USE neptune_archive;

SHOW TABLES;

CREATE TABLE ApiTransactionLog(
	TransactionBody JSON,
	CreatedAt DATETIME,
	TransactionChannel VARCHAR(5),
	CreatedBy VARCHAR(10),
	PurgedAt DATETIME,
	PurgedBy VARCHAR(10)
);

CREATE EVENT Move_ApiTransaction
ON SCHEDULE EVERY 15 MINUTE
DO
INSERT INTO neptune_archive.ApiTransactionLog (TransactionBody,CreatedAt,TransactionChannel,CreatedBy,PurgedAt,PurgedBy)
SELECT TransactionBody,CreatedAt,TransactionChannel,CreatedBy,NOW() PurgedAt,'o9admin' PurgedBy FROM neptune.ApiTransaction 


CREATE EVENT Move_ApiTransaction
ON SCHEDULE
    EVERY 15 MINUTE
DO
BEGIN
    INSERT INTO neptune_archive.ApiTransactionLog (TransactionBody,CreatedAt,TransactionChannel,CreatedBy,PurgedAt,PurgedBy)
	SELECT TransactionBody,CreatedAt,TransactionChannel,CreatedBy,NOW() PurgedAt,'o9admin' PurgedBy FROM neptune.ApiTransaction ;      
	TRUNCATE TABLE neptune.ApiTransaction;
END

SHOW EVENTS FROM neptune_archive


