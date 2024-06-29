show databases;
create database empdb;
use empdb;
show tables;
create table employee(
	id int auto_increment primary key,
	name varchar(200) not null,
	dept varchar(200),
	salary int,
	location varchar(200)
);
desc employee;
insert into employee(name,dept,salary,location) values('hannah','it',25000,'kochi');
select * from employee;

-- q1 print highest salary employee
select * from employee where salary=(select max(salary) from employee);

-- q2 print all employee where dept = it
select *from employee where dept='it'; 

-- q3 delete employee where id=4
delete from employee where id=4;


-- q4 print name of employee whose salary is highest
select name from employee where salary=(select max(salary) from employee);

-- q5 total no.of employees
select count(*) from employee;

-- q6 print dept wise count
select salary,count(*) from employee group by salary;
select dept,count(*) from employee group by dept;

-- q7 sort by salary
select * from employee order by salary desc;

-- q8  add empid
-- alter table employee add column empid int not null;
-- update employee set empid=1018 where id=2;
 -- add column dateofjoin
alter table employee add column dateofjoin varchar(100);
update employee set dateofjoin='08-10-2022' where id=2;

select max(dept) from employee;


 
