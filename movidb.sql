show databases;
create database moviedb;
use moviedb;
show tables;
create table movie(
	id int auto_increment primary key,
    title varchar(200) not null unique,
    year varchar(100),
    runtime int,
    language varchar(200) default 'malayalam'
    
);
desc movie;

insert into movie(title,year,runtime,language) values('3','2019',140,'tamil');
select * from movie;
select title from movie;

-- print all malayalam movie names
select * from movie where language='malayalam';

--  select all movies where runtime > 120
select * from movie where runtime>120; 

-- select all movie names where language!=malayalam
select title from movie where language!='malayalam';

-- update query
-- update movie runtime as 125 whose id=3
update movie set runtime=125 where id=3;  
update movie set title='guthlee ladoo' where id=3;

--  query for deleting row
delete from movie where id=5; 

-- altering table
-- add a new column rating float with default value 3.5
alter table movie add column rating float default 3.5;  

update movie set rating=4 where id=3;

-- aggregate functions
select count(*) from movie;
select max(rating) from movie;
select min(rating) from movie;
select min(runtime) from movie;

 -- nested query
 select title from movie where rating=(select max(rating) from movie);
 select title from movie where rating=(select min(rating) from movie);
 select title from movie where runtime=(select max(runtime) from movie);
 
 -- group by
 select language,count(*) from movie group by language;
 
 --  print second largest rating
 select max(rating) from movie where rating <> (select max(rating) from movie);
select title  from movie where rating=(select max(rating) from movie where rating <> (select max(rating) from movie));
-- order by
select * from movie order by runtime desc;



 
 
 
 