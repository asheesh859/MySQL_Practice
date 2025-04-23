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
    
select * from salaries;
