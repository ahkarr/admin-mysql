USE classicmodels

SELECT * FROM customers c 

-- json array

SELECT 
JSON_ARRAY(customerName,contactLastName,contactFirstName,phone) FROM customers;

CREATE TABLE json_contact(
empId INT PRIMARY KEY,
empData JSON
);

INSERT INTO json_contact (empId,empData)
SELECT 
employeeNumber ,JSON_ARRAY(lastName,firstName,extension,email) 
FROM employees e 
