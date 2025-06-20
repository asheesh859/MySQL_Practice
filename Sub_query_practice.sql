create database employee;
use employee;
create table emp (Eid int , Ename varchar(20) , salary int , city varchar(20))
select * from emp;
insert into emp values (106,'Big' , 4000,'Hydrabad');

create table M_status (Eid int , M_status varchar(10) , Gender varchar(10));
insert into M_status values (101 , 'Yes' , 'M'),(102,'No' , 'F') ,(103 ,'Yes' , 'M'), (104 , 'Yes' , 'M') ,(105 , 'No' ,'F');
select * from M_status;

create table incentive (Eid int ,incentive_ammount int , Date varchar(20));
insert into incentive values (101 , 5000 , '19/11/2020'),(102,2000 , '15/1/2014') ,(103 ,2500 , '10/9/2016'), (104 , 3000 , 'M') ,(105 , 1500 ,'10/10/2015');
update  incentive set Date = '10/12/2025' where Date = 'M';
select * from incentive;

select max(salary) from emp where salary < (select max(salary) from emp where salary <(select max(salary) from emp));
select Ename from emp where Eid in (select Eid from m_status where m_status='Yes');

select Ename from emp where Eid in  (select Eid from incentive);
select Ename from emp where Eid in (select Eid from m_status where M_status ='No');
select Ename from emp where Eid in (select Eid from m_status where M_status ='Yes');
select Ename , salary from emp where Eid in (select Eid from m_status where Gender = 'F');
select Ename from emp where Eid in (select Eid from incentive where incentive_ammount >=5000);
select Ename from emp where Eid in (select Eid from incentive where Eid in (select Eid from m_status where M_status ='Yes'));

select Ename from emp where Eid in (select Eid from m_status where M_status = 'Yes' and Gender = 'M');
select M_status from m_status where Eid in (select Eid from emp where city = 'Banglore');

select Date from incentive where Eid in (select Eid from emp where Ename Like '%a');
select Ename from emp where Eid not in (select Eid from incentive);

select Ename from emp order by Ename Desc;
select Ename from emp order by Ename Asc;

select Max(salary) from emp;

select avg(salary) from emp;
select min(salary) from emp;

select sum(salary) from emp;
select count(Eid) from emp;
select count(Eid) from emp group by city order by count(Eid) desc;
select count(salary) from emp group by salary;
select count(city) from emp group by city having city ='Banglore';
select ucase(Ename) from emp;
select lcase(Ename) from emp;

select * from emp order by Eid asc limit 2;
select * from emp order by Eid asc limit 1;
select * ,mid(city, 3) from emp;
select now();
select now() as time;

select * from emp where Ename like '%e';
select * from emp where Ename like 'M%';

select * from emp where Ename like '___';

select * from emp where Ename like '_____';

select * from emp where Ename like '___m';
delete from emp where Eid = 105;
select * from emp;
select  distinct salary from emp;
select concat(Ename ," _", salary) from emp;

select ltrim(Ename) from emp;

select rtrim(city) from emp;
select trim(city) from emp;
select concat(trim(Ename),"_",trim(salary)) from emp;
select concat(Ename , salary) from emp order by concat(Ename,salary) desc;
select * from emp order by Ename asc;
update emp set Ename = "Smith" where Ename ="alice";
select * from emp;
update emp set Ename="abc" where Ename="Smith";

update emp set Eid=110 where Eid=101;
update emp set city="Bengluru" where city = "Banglore";
delete from emp where Ename ='abc';
delete from emp where salary = 10000;
update emp set salary = salary+2000;
update emp set salary = salary-3000;

alter table emp add email varchar(20);

alter table emp drop email;

alter table emp add email varchar(20) first;

select length(Ename) from emp;

select max(salary) from emp where salary<(select max(salary) from emp);

select * from emp where Eid in (select Eid from incentive );
select * from emp where Eid in (select Eid from m_status where M_status='No');
















