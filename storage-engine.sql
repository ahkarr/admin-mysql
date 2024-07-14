-- check engine
SELECT table_schema,table_name,ENGINE FROM information_schema.tables
WHERE table_schema = 'classicmodels'

USE classicmodels
SHOW TABLE STATUS

SHOW CREATE TABLE customers -- CREATE TABLE STATEMENT

-- check engines
SHOW ENGINES

