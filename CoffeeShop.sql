create database coffee_store;
show databases;
use coffee_store;

CREATE TABLE products (

	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(30),
	price DECIMAL(3,2),
	coffee_origin VARCHAR(30)
);

CREATE TABLE customers (

	id INT AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender ENUM('M','F'),
	phone_number VARCHAR(11)
);

CREATE TABLE orders (

	id INT AUTO_INCREMENT PRIMARY KEY,
	product_id INT,
	customer_id INT,
	order_time DATETIME,
	FOREIGN KEY (product_id) REFERENCES products(id),
	FOREIGN KEY (customer_id) REFERENCES customers(id)
);

select * from products;
alter table products
drop column coffee_origin;
alter table products
add column coffee_origin VARCHAR(30);
show tables;

insert into products (name, price, coffee_origin)
values ('Espresso', 2.50, 'Brazil');

insert into products (name, price, coffee_origin)
values ('Macchiato', 3.00, 'Brazil'), ('Cappuccino', 3.50, 'Costa Rica');

insert into products (name, price, coffee_origin)
values 
('Latte', 3.50, 'Indonesia'), 
('Americano', 3.00, 'Brazil'),
('Flat White', 3.50, 'Indonesia'),
('Filter', 3.00, 'India');

select * from products;