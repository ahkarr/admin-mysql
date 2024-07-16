-- sale
CREATE DATABASE sales;

USE sales;

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255),
    unit_price DECIMAL(10, 2)
);

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_details (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    total_price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Inserting into Products Table
INSERT INTO products (product_name, unit_price)
VALUES
    ('Desktop Computer', 800.00),
    ('Tablet', 300.00),
    ('Printer', 150.00);

-- Inserting into Customers Table
INSERT INTO customers (customer_name, email)
VALUES
    ('Alice Johnson', 'alice@example.com'),
    ('Charlie Brown', 'charlie@example.com'),
    ('Eva Davis', 'eva@example.com');

-- Inserting into Orders Table
INSERT INTO orders (customer_id, order_date)
VALUES
    (1, '2023-02-01'),
    (2, '2023-02-02'),
    (3, '2023-02-03');

-- Inserting into Order_Details Table
INSERT INTO order_details (order_id, product_id, quantity, total_price)
VALUES
    -- Order 1 details
    (1, 1, 2, 1600.00),
    (1, 2, 3, 900.00),

    -- Order 2 details
    (2, 2, 2, 600.00),
    (2, 3, 1, 150.00),

    -- Order 3 details
    (3, 1, 3, 2400.00),
    (3, 3, 2, 300.00);
    
SHOW TABLES