
# Lab | SQL Queries 9
USE sakila;

#1. Create a table rentals_may to store the data from rental table with information for the month of May
#2. Insert values in the table rentals_may using the table rental, filtering values only for the month of May.

CREATE TABLE rental_may 
AS SELECT * 
FROM rental
WHERE rental_date LIKE "%-05-%";

SELECT*
FROM rental_may;
  

#3. Create a table rentals_june to store the data from rental table with information for the month of June.
#4. Insert values in the table rentals_june using the table rental, filtering values only for the month of June.

CREATE TABLE rental_june
AS SELECT * 
FROM rental
WHERE rental_date LIKE "%-06-%";

SELECT*
FROM rental_june;


#5. Check the number of rentals for each customer for May.

SELECT customer_id, count(rental_id) AS total_rentals_per_customer
FROM rental_may
GROUP BY customer_id
ORDER BY total_rentals_per_customer DESC;


#6. Check the number of rentals for each customer for June.

SELECT customer_id, count(rental_id) AS total_rentals_per_customer
FROM rental_june
GROUP BY customer_id
ORDER BY total_rentals_per_customer DESC;
