-- json object

USE classicmodels

SELECT * FROM json_contact

TRUNCATE TABLE json_contact;

INSERT INTO json_contact (empId,empData)
SELECT
employeeNumber ,JSON_OBJECT('email',email,'extension',extension) 
FROM employees 

SELECT * FROM json_contact