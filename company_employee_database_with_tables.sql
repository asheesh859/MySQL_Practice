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




