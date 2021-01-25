create database example;
use example;

create table people(
	id INT auto_increment primary key,
    name varchar(30),
    age int,
    gender enum('M', 'F')
);

insert into people (name,age,gender)
values
('Emma', 21, 'F'),
('John', 30, 'M'),
('Thomas', 27, 'M'),
('Chris', 44, 'M'),
('Sally', 23, 'F'),
('Frank', 55, 'M');

select * from people;

delete from people 
where name = 'John';