
-- Two dashes: leaves commits in SQL 
-- DDL commands (Data Definition Language)
-- Used to build and modify our database 

-- CREATE

CREATE DATABASE ecom;

USE ecom; 

CREATE TABLE customer (
id INT AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(75) NOT NULL,
customer_email VARCHAR(150) NOT NULL
);

CREATE TABLE orders (
id INT AUTO_INCREMENT PRIMARY KEY,
order_date DATE NOT NULL,
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES customer(id)
);

-- ALTER

ALTER TABLE customer ADD (phone VARCHAR(15), address VARCHAR(150)); -- adding phone and address to customer

-- ALTER TABLE customer ADD phone VARCHAR(15); no need for parenthesis adding a single column

-- DROPPING a column 

-- ALTER TABLE customer
-- DROP COLUMN phone;

-- DROPPING a TABLE
-- DROP TABLE customer
