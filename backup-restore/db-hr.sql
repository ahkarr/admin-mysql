CREATE DATABASE IF NOT EXISTS hr;

USE hr;

CREATE TABLE IF NOT EXISTS employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);

INSERT INTO employees (name, email) 
VALUES
    ('John Doe', 'john.doe@example.com'),
    ('Jane Smith', 'jane.smith@example.com'),
    ('Bob Johnson', 'bob.johnson@example.com'),
    ('Alice Jones', 'alice.jones@example.com'),
    ('Charlie Brown', 'charlie.brown@example.com');
    
-- delete one line
 DELETE FROM employees WHERE email = 'john.doe@example.com';
 
SELECT * FROM employees ;

-- after restore database

SELECT * FROM employees ;