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