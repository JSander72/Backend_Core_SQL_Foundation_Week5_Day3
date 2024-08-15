USE ecom;

-- DQL ( Data Quary Language )

-- SELECT, FROM

SELECT * FROM customer;

SELECT customer_name, customer_email FROM customer;

-- WHERE - lets us filter based on a condition

SELECT * FROM customer
WHERE customer_name = 'James';

-- AND, OR, NOT
SELECT * FROM customer 
WHERE id = 8 OR id = 11;

SELECT * FROM customer
WHERE customer_name = 'Semaj' OR '000@outlook.com';

SELECT * FROM customer
WHERE id > 8;

SELECT *FROM customer
WHERE NOT id = 1;

-- ORDER BY

SELECT * FROM customer
ORDER BY customer_name DESC; -- descending 

-- LIKE 

SELECT * FROM customer 
WHERE customer_email LIKE '%@jedi.com'; -- % is wild card that allows diffent info then matches the rest of the string exactly 

-- BETWEEN

SELECT * FROM orders;

SELECT * FROM orders
WHERE order_date BETWEEN '2023-01-01' AND '2023-04-30';





SELECT * FROM customer
ORDER BY customer_name ASC; -- ascending 


