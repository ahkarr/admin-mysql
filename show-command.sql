-- show database
SHOW DATABASES

SELECT schema_name FROM information_schema.schemata

-- show table
USE classicmodels

SHOW TABLES

SHOW FULL TABLES

CREATE VIEW contacts AS
SELECT c.contactFirstName,c.contactLastName,c.phone FROM customers c 
UNION
SELECT e.firstName,e.lastName,e.extension AS phone FROM employees e 

SHOW FULL TABLES

SHOW FULL TABLES WHERE TABLE_TYPE LIKE 'V%'

-- SELECT TABLE FROM DATABASE
SHOW FULL TABLES FROM mysql

-- SHOW COLUMNS
USE classicmodels
DESCRIBE customers 

SHOW COLUMNS FROM employees

SHOW COLUMNS FROM mysql.USER

SELECT * FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA  = 'performance_schema'
AND TABLE_NAME = 'events_waits_history'
ORDER BY ORDINAL_POSITION 

-- SHOW PROCESS

SHOW FULL PROCESSLIST
