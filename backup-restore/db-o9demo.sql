CREATE DATABASE o9demo;

USE o9demo;

show global variables like 'log_bin';

CREATE TABLE IF NOT EXISTS contacts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

INSERT INTO contacts (first_name, last_name, email) 
VALUES
    ('John', 'Doe', 'john.doe@example.com'),
    ('Jane', 'Smith', 'jane.smith@example.com'),
    ('Bob', 'Johnson', 'bob.johnson@example.com');
    
-- MAKE TRANSACTION
   
DELETE FROM contacts ;

