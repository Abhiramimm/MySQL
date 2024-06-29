create database budgetdb;
use budgetdb;
show tables;
create table transaction(
	id int auto_increment primary key,
    title varchar(200) not null,
    type enum('expense','income') default 'expense',
    category enum('food','fuel','shopping','bills','emi','entertainment','miscellanious') default 'miscellanious',
    user varchar(200) not null,
    amount int not null,
    created_date timestamp default current_timestamp
);
desc transaction;
insert into transaction(title,type,category,user,amount) values
-- 	('home emi','expense','bills','vipin',5000),
-- 	('filim ticket','expense','entertainment','vipin',500),
-- 	('auto charge','expense','bills','vipin',50),
-- 	('tea','expense','food','vipin',50)
   -- ('rent recived','income','bills','hari',10000),
    ('interest credited','income','entertainment','vipin',75000);
select * from transaction;
select * from transaction where user='hari';
-- select sum(amount) from transaction where type='expense'; 
select type,sum(amount) from transaction group by type;
select type,sum(amount) from transaction  where user='hari' group by type;
select category,sum(amount) from transaction group by category;
select category,sum(amount) from transaction where user='hari' group by category;
select category,count(*) as catcount from transaction where user='vipin' group by category;
-- select category from transaction where amount=(select max(amount) from transaction where user='hari');
select category,sum(amount) as catsum from transaction where user='hari' group by category order by catsum desc limit 1;
