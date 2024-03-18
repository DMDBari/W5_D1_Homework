-- Question 1 --
SELECT count(*)
FROM actor
WHERE last_name = 'Wahlberg';
-- Answer: 2 --

-- Question 2 --
SELECT count(*)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
-- Answer: 5607 --

-- Question 3 --
SELECT count(film_id), film_id 
FROM inventory
GROUP BY film_id
HAVING count(film_id) = 7;
-- see table (116 films have 7 copies in inventory) --

-- Question 4 --
SELECT count(*)
FROM customer
WHERE first_name = 'Willie';
-- Answer: 2 --

-- Question 5 --
SELECT count(staff_id), staff_id
FROM rental
GROUP BY staff_id;
-- Answer: staff_id 1 --

-- Question 6 --
SELECT count(DISTINCT district)
FROM address;
-- Answer: 378 --

-- Question 7 --
SELECT count(film_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY count(film_id) desc;
-- Answer: 508 with 15 actors --

-- Question 8 --
SELECT count(DISTINCT last_name)
FROM customer
WHERE last_name LIKE '%es'AND store_id = 1;
-- Answer: 13 --

-- Question 9 --
SELECT count(amount), amount
FROM payment
WHERE customer_id BETWEEN 350 AND 430
GROUP BY amount
HAVING count(amount) > 250;
-- Answer: 3 --

-- Question 10 part 1--
SELECT count (DISTINCT rating)
FROM film;
-- Answer: 5 --

-- Question 10 part 2--
SELECT rating, count(*)
FROM film
GROUP by rating
ORDER BY count desc;
-- Answer: PG-13--