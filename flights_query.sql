--Select all records for the "airports" database.
SELECT *
FROM airports;

--Select only faa, name, lat, and lon
SELECT faa, name, lat, lon
FROM airports;

--Rename lat and lon latitude and longitude
SELECT faa, name, lat AS latitude, lon AS longitude
FROM airports;

--Round latitude and longitude to two decimal places
SELECT faa, name, ROUND(lat, 2) AS latitude, ROUND(lon, 2) AS longitude
FROM airports;

--Use "weather" table to get temperatures in celsius
SELECT (temp-32)*5/9 AS temp_celsius
From weather;

--Create new field called "place seats" and concat to get "This plane seats " using "planes" table
SELECT CONCAT('This plane seats ', seats, '.') AS plane_seats
FROM planes;

--Create new field called "model seats" and concat to get "This model seats " using "planes" table
SELECT CONCAT('This ', year,' ', INITCAP(manufacturer), ' ', model, ' seats ', seats, '.') AS model_seats
FROM planes;