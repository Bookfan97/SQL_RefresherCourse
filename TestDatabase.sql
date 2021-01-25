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

alter table people
add constraint FK_PeopleAddress
foreign key (address_id) REFERENCES addresses(id); 

alter table people
drop foreign key FK_PeopleAddress;

select * from pets;

alter table pets
add constraint u_species unique (species);

alter table pets
drop index u_species;

alter table pets change `species` `animal_type` VARCHAR(20);

alter table addresses modify city varchar(30);

alter table addresses modify city char(30);