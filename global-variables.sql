SHOW GLOBAL VARIABLES

SHOW GLOBAL VARIABLES LIKE 'max_connections'

SHOW GLOBAL VARIABLES LIKE 'max_con%'

-- set global variables
SET GLOBAL  max_connections = 301;

SELECT @@max_connections