SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name='film';

SELECT *
FROM film
LIMIT 100;

--Select "title" field from "film" table
SELECT title
FROM film;

--Select "title", "description", and "release_year" fields from field table
SELECT title, description, release_year
FROM film;

--Create new column calculating 2% increase in rental rates
SELECT title, description, rental_rate, rental_rate*1.02
FROM film;

--Create new column calculating 2% increase in rental rates and alias it "rental_rate_increase"
SELECT title, description, rental_rate, rental_rate*1.02 AS rental_rate_increase
FROM film;

--Alias all fields
SELECT title AS film_title, description AS film_description, rental_rate AS old_rental_rate, rental_rate*1.02 AS new_rental_rate
FROM film;

--Round rental rate to two decimals
SELECT title, description, rental_rate, round(rental_rate*1.02,2) AS rental_rate_increase
FROM film;

--Old concat
SELECT title || '. Rated: ' || rating AS title_rating, release_year
From film;

--New concat
SELECT CONCAT(title, '. Rated: ', rating) AS title_rating, release_year
FROM film;

--Capitalize Properly
SELECT CONCAT(INITCAP(title), '. Rated: ', rating) AS title_rating, release_year
FROM film;