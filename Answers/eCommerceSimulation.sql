create table users (
  user_id serial primary key,
	name text,
  email text
);

create table products (
  product_id serial primary key,
	name text,
  price float
);

create table orders (
  order_id serial primary key,
  product_id int,
  foreign key (product_id) references products(product_id)
	);

insert into users (name, email)
values 
('Joe', 'joe@joe.com'),
('Bill', 'bill@bill.com'),
('Bob', 'bob@bob.com');

insert into products (name, price)
values 
('Wizz', 34.66),
('Bang', 23.09),
('Boom', 12.68);

INSERT INTO orders
(product_id)
VALUES
(1), (2), (3);

SELECT * 
FROM products 
INNER JOIN orders 
ON products.product_id = orders.product_id
WHERE orders.order_id = 1;

SELECT * FROM orders;

SELECT orders.order_id, SUM(products.price)
FROM products 
INNER JOIN orders 
ON products.product_id = orders.product_id
WHERE orders.order_id = 3
GROUP BY orders.order_id;

ALTER TABLE users
ADD COLUMN order_id INT
REFERENCES orders(order_id);

UPDATE users
SET order_id = 1
WHERE user_id = 1;

UPDATE users
SET order_id = 2
WHERE user_id = 2;

UPDATE users
SET order_id = 3
WHERE user_id = 3;

SELECT *
FROM users 
INNER JOIN orders 
ON orders.order_id = users.order_id
WHERE users.user_id =3;

SELECT COUNT(*)
FROM users 
INNER JOIN orders 
ON orders.order_id = users.order_id
WHERE users.user_id = 2;