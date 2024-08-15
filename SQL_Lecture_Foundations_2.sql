
USE ecom;

SELECT * FROM customer;
SELECT * FROM orders;

-- DML (DATA MUNIPULATION LANGUAGE)
-- add, modify, and delete data withn our database

-- INSERT INTO

INSERT INTO customer (customer_name, customer_email, phone, address)
VALUE ('James', 'jamesearlsanders2@outlook.com', '2055697293', '123 Real Street'); -- string are required to be entered in with single quotes

-- ADD multiple values to a table at once
INSERT INTO customer (customer_name, customer_email, phone, address)
VALUE ('James', 'jamesearlsanders2@outlook.com', '2055697293', '123 Real Street'),
('Earl', 'earlsanders2james@outlook.com', '4705697293', '231 Real Street'),
('Sanders', 'sanders2jamesearl@outlook.com', '4045697293', '312 Real Street');

-- Update Entities

UPDATE customer
SET customer_name = 'Semaj', customer_email = '000@outlook.com'
WHERE id = 2;

-- MySQL has a safe guard
-- SQL_SAFEGUARD 1 and 0
-- 1 is the default, allows us to delete data based off of the 'id' or primary key identifier 
-- 0 offers more freedom to delete based off other attributes

SET SQL_SAFE_UPDATE = 0;
DELETE FROM customer
WHERE customer_email = '000@outlook.com';


-- ADDING ADDITIONAL DATA FOR QUERYING

INSERT INTO customer (customer_name, customer_email, phone)
VALUES ('Peter Cottontail', 'pc@email.com', '1234567891'),
('Jungle George', 'banana@email.com', '1234567892'),
('Billy Butcher', 'supesoup@email.com', '1234567893'),
('Obi-wan Kenoibi', 'ok@jedi.com', '1234567894'),
('Django Freeman', 'whereshildi@email.com', '1234567895'),
('John Dutton', 'ranch4life@email.com', '1234567896'),
('Jeff Probst', 'jp@survivor.com', '1234567897');


INSERT INTO orders (order_date, customer_id)
VALUES ('2023-01-18', 1),
('2023-02-24', 1),
('2023-02-28', 6),
('2023-03-04', 8),
('2023-03-12', 2),
('2023-04-16', 7),
('2023-05-19', 9),
('2023-06-02', 10),
('2023-12-23', 11),
('2024-01-18', 1);
 

