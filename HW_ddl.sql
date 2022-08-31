CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(150),
    phone_num VARCHAR(20)
);

SELECT *
FROM customers;

CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    movie_title VARCHAR(250),
    rating NUMERIC(2,1),
    showing_time TIME,
    showing_dates DATE
);

CREATE TABLE tickets(
    movie_id INTEGER NOT NULL,
    movie_time TIME,
    movie_date DATE,
    ticket_id SERIAL,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
);

CREATE TABLE concessions(
    customer_id INTEGER NOT NULL,
    product_name VARCHAR(50),
    price NUMERIC(4,2),
    product_id SERIAL,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

ALTER TABLE movies
RENAME COLUMN showing_time TO showing_times;

ALTER TABLE movies
ALTER COLUMN showing_times SET VARCHAR(100);

ALTER TABLE concessions
DROP COLUMN customer_id;

ALTER TABLE concessions
ADD COLUMN customer_id INTEGER;

ALTER TABLE movies
DROP COLUMN showing_times,
DROP COLUMN showing_dates;

ALTER TABLE movies
ADD COLUMN showing_times VARCHAR(100),
ADD COLUMN showing_dates VARCHAR(100);

ALTER TABLE tickets
DROP COLUMN movie_id,
DROP COLUMN movie_time,
DROP COLUMN movie_date,
DROP COLUMN customer_id;

ALTER TABLE tickets
ADD COLUMN movie_id INTEGER,
ADD COLUMN movie_time VARCHAR(50),
ADD COLUMN movie_date VARCHAR(50),
ADD COLUMN customer_id INTEGER;






SELECT *
FROM movies;