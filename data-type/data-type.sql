USE data_archive;

-- BIT
CREATE TABLE working_calendars(
    year INT,
    week INT,
    days BIT(7),
    PRIMARY KEY(year,week)
);

INSERT INTO working_calendars(year,week,days)
VALUES(2017,1,B'1111100');

SELECT * FROM working_calendars 

-- 
CREATE TABLE items (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    item_text VARCHAR(255)
);

INSERT INTO 
    items(item_text)
VALUES
    ('laptop'), 
    ('mouse'),
    ('headphone');
    
SELECT * FROM items ;

INSERT INTO items(item_id,item_text)
VALUES(10,'Server');

INSERT INTO items(item_text)
VALUES('Router');

-- boolean
CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    completed BOOLEAN
);

DESC tasks 

INSERT INTO tasks(title, completed) 
VALUES 
  ('Master MySQL Boolean type', true), 
  ('Design database table', false);
  
SELECT * FROM tasks 

-- decimal

	CREATE TABLE materials (
	    id INT AUTO_INCREMENT PRIMARY KEY,
	    description VARCHAR(255) NOT NULL,
	    cost DECIMAL(19,4) NOT NULL
	);
	
INSERT INTO materials(description, cost) 
VALUES 
  ('Bicycle', 500.34), 
  ('Seat', 10.23), 
  ('Break', 5.21);
  
SELECT * FROM materials 

-- datetime

CREATE TABLE events(
    id INT AUTO_INCREMENT PRIMARY KEY,
    event_name VARCHAR(255) NOT NULL,
    started_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO events(event_name)
VALUES('Connected to MySQL Server');

SELECT * FROM events;

-- date

CREATE TABLE people (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL
);

INSERT INTO people(first_name,last_name,birth_date)
VALUES('John','Doe','1990-09-01');

INSERT INTO people(first_name,last_name,birth_date)
VALUES('Jack','Daniel','01-09-01'),
      ('Lily','Bush','80-09-01');
      
     SELECT * FROM people ;