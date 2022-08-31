-- DML

SELECT *
FROM customers;

INSERT INTO customers(
    first_name,
    last_name,
    email,
    phone_num
) VALUES (
    'logan',
    'kostas',
    'logank@gmail.com',
    '678-255-2525'
);

INSERT INTO movies(
    movie_title,
    rating,
    showing_times,
    showing_dates
)VALUES (
    'venom',
    '5.1',
    '11, 12, 1, 2',
    'moday, wednesday'
);


INSERT INTO tickets(
    movie_time,
    movie_date
) VALUES (
    '11:45',
    '2022-12-04'
);



INSERT INTO concessions(
    product_name,
    price
)VALUES (
    'popcorn',
    '6.99'
);

SELECT *
FROM concessions; 