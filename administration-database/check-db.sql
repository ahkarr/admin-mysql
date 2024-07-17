SELECT 
TABLE_SCHEMA AS 'Database',
TABLE_NAME AS 'Table',
ROUND((DATA_LENGTH + INDEX_LENGTH)/1024/2024) AS 'Size(MB)'
FROM information_schema.tables 
