create database example;
use example;

create table people(
	id INT auto_increment primary key,
    name varchar(30),
    age int,
    gender enum('M', 'F')
);

select * from people;