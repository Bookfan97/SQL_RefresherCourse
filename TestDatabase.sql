create database test;
use test;
create table addresses
(
	id INT,
    house_number INT,
    city VARCHAR(20),
    zipcode varchar(7)
);

create table people
(
	id int,
    first_name varchar(20),
    last_name varchar(20),
    address_id INT
);

create table pets
(
	id int,
    name VARCHAR(20),
    species VARCHAR(20),
    owner_id INT
);

show tables;

alter table addresses
add primary key (id);

alter table addresses
drop primary key;

describe addresses;

alter table people
add primary key (id);

describe people;