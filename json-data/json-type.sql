USE proteus

CREATE TABLE products(
   id INT AUTO_INCREMENT PRIMARY KEY,
   name VARCHAR(255) NOT NULL,
   price DECIMAL(10,2) NOT NULL,
   properties JSON
);

INSERT INTO products(name, price, properties)
VALUES('T-Shirt', 25.99, '{"sizes":["S","M","L","XL"], "colors": ["white","black"]}');

SELECT * FROM products ;

-- json_pretty

SELECT JSON_PRETTY(properties)
FROM products ;

-- json_key
SELECT JSON_KEYS(properties)
FROM products ;

SELECT JSON_EXTRACT(properties,'$.colors[0]') Value1,
JSON_EXTRACT(properties,'$.colors[1]') Value2
FROM products ;