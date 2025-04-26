create database company_employee;
use company_employee;
create table employees (
	emp_no int , 
    birth_date DATE, 
    first_name VARCHAR(14), 
    last_name VARCHAR(16) , 
    sex ENUM('M','F'),
    hire_date DATE
    );
select * from employees;
create table dept_manager(	dept_no char(4) , emp_no int , from_date DATE , to_date DATE);
create table departments(dept_no CHAR(4) , dept_name VARCHAR(40));
create table dept_emp(
	emp_no int ,
	dept_no CHAR(4),
	from_date DATE,
	to_date DATE
);
create table titles (
	emp_no INT,
    title VARCHAR(50),
    from_date DATE,
    to_date DATE
);

create table salaries (
	emp_no INT,
    salary INT,
    from_date DATE,
    to_date DATE
);

alter table employees add primary key (emp_no); 
alter table dept_manager add primary key (dept_no);
alter table dept_manager add foreign key (emp_no) references employees(emp_no);
alter table dept_emp add foreign key (emp_no) references employees(emp_no);

alter table departments add foreign key(dept_no) references dept_manager(dept_no);
alter table titles add foreign key (emp_no) references employees(emp_no);
alter table salaries 
	add foreign key (emp_no)
    references employees(emp_no);
    
insert into employees values(1, '2000-07-02', "Asheesh" , "Kumar" , 'M','2025-04-23'); 
insert into employees values(2, '1999-01-03', "Akash" , "Sharma" , 'M','2025-05-17'); 
insert into employees values(3, '2004-02-04', "Nimesh" , "Mishra" , 'M','2025-01-12'); 
insert into employees values(4, '2003-03-05', "Saloni" , "Paliwal" , 'F','2025-08-6'); 
insert into employees values(5, '2002-04-06', "Hanshika" , "Rathi" , 'F','2025-12-5'); 
insert into employees values(6, '2001-05-07', "Priya" , "Bhagel" , 'F','2025-11-4'); 
insert into employees values(7, '1998-06-08', "Manish" , "Kumar" , 'M','2025-09-3'); 
insert into employees values(8, '1999-07-09', "Devesh" , "Kashyap" , 'M','2025-02-2'); 
insert into employees values(9, '2002-08-10', "Aneesh" , "Sharma" , 'M','2025-03-1'); 
insert into employees values(10, '2001-08-03', "Ankush" , "Kumar" , 'M','2025-03-21'); 
insert into employees values(11, '2000-08-04', "Vishal" , "Kumar" , 'M','2025-03-24'); 

insert into salaries values (1,20000,'2014-04-24' , '2020-07-7');
insert into salaries values (2,30000,'2015-04-24' , '2022-07-7');
insert into salaries values (3,40000,'2012-05-24' , '2023-04-2');
insert into salaries values (4,50000,'2011-05-28' , '2025-09-14');
insert into salaries values (5,120000,'2015-06-24' , '2020-07-15');
insert into salaries values (6,860000,'2016-07-24' , '2020-12-16');
insert into salaries values (7,760000,'2017-08-24' , '2020-11-17');
insert into salaries values (8,450000,'2012-09-24' , '2020-10-18');
insert into salaries values (9,800000,'2011-10-24' , '2020-09-19');
insert into salaries values (10,70000,'2014-11-24' , '2020-08-20');

select * from salaries,employees where salaries.emp_no=employees.emp_no;

insert into dept_manager values ('101',1,'2014-04-24' , '2020-07-7');
insert into dept_manager values ('102',2,'2015-04-24' , '2022-07-7');
insert into dept_manager values ('103',3,'2012-05-24' , '2023-04-2');
insert into dept_manager values ('104',4,'2011-05-28' , '2025-09-14');
insert into dept_manager values ('105',5,'2015-06-24' , '2020-07-15');
insert into dept_manager values ('106',6,'2016-07-24' , '2020-12-16');
insert into dept_manager values ('107',7,'2017-08-24' , '2020-11-17');
insert into dept_manager values ('108',8,'2012-09-24' , '2020-10-18');
insert into dept_manager values ('109',9,'2011-10-24' , '2020-09-19');
insert into dept_manager values ('110',10,'2014-11-24' , '2020-08-20');

insert into departments values ('101','Computer Science');
insert into departments values ('102','Civil Depaertment');
insert into departments values ('103','Engineering');
insert into departments values ('104','Electrical');
insert into departments values ('105','Artificial inteligence');
insert into departments values ('106','Cloud computing');
insert into departments values ('107','Human Resource');
insert into departments values ('108','Accounts');
insert into departments values ('109','Information Technology');
insert into departments values('110','Maintainance');

select * from dept_manager,departments,employees where dept_manager.dept_no=departments.dept_no AND employees.emp_no=dept_manager.emp_no;





