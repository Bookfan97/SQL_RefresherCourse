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


/*Exercise 1*/

/*1. Add a primary key to the id fields in the pets and people tables.*/
alter table pets 
add primary key (id);


alter table people 
add primary key (id);

/*2. Add a foreign key to the owner_id field in the pets table referencing the id field in the people table. */

alter table pets 
add constraint FK_ownerID
foreign key (owner_id) REFERENCES people(id); 

/*3. Add a column named email to the people table. */
ALTER TABLE people
ADD COLUMN email VARCHAR(20);

/*4. Add a unique constraint to the email column in the people table.*/
alter table people
add constraint u_email unique (email);

/*5. Rename the name column in the pets table to ‘first_name’.*/
alter table pets change `name` `first_name` VARCHAR(20);

/*6. Change the postcode data type to CHAR(7) in the addresses table.*/
ALTER TABLE addresses MODIFY zipcode CHAR(7);
