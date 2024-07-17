SHOW DATABASES;

USE neptune;

CREATE TABLE ApiTransaction(
	TransactionNumber INT AUTO_INCREMENT,
	TransactionBody JSON,
	CreatedAt DATETIME,
	TransactionChannel VARCHAR(5),
	CreatedBy VARCHAR(10),
	PRIMARY KEY(TransactionNumber)
);

CREATE EVENT define_apitransaction
ON SCHEDULE EVERY 5 SECOND 
DO
INSERT INTO 
ApiTransaction (TransactionBody,CreatedAt,TransactionChannel,CreatedBy)
VALUES
(JSON_OBJECT('JsonBody',UUID(),'CreatedAt',NOW()),NOW(),char(round(rand()*25)+65),'neptune');

SHOW EVENTS FROM neptune;

SELECT COUNT(*) FROM neptune.ApiTransaction

