create database constraints;
create table employees (emp_id int primary key,emp_name varchar(50));
-- not null
create table students (student_id int,
    name varchar(50) not null
);
-- unique
create table users (user_id int primary key,
    email varchar(100) unique
);
-- check
create table employees1 (emp_id int,
    salary int check (salary > 0)
);
-- primary key + not null
create table customers (customer_id int primary key,
    name varchar(50) not null
);
-- primary key in department
create table departments (department_id int primary key,
    department_name varchar(50)
);
-- foreign key
create table employees (emp_id int primary key,department_id int,foreign key (department_id)
    references departments(department_id)
);
-- age check
create table students (student_id int primary key,age int check (age between 18 and 60)
);
-- two unique columns
create table users (user_id int primary key,username varchar(50) unique,email varchar(100) unique
);
-- foreign key with orders
create table orders (order_id int primary key,customer_id int,foreign key (customer_id)
    references customers(customer_id)
);
-- add not null
alter table employees
modify emp_name varchar(50) not null;
-- add unique
alter table employees
add constraint unique_email unique (email);
-- add check
alter table employees add constraint check_salary check (salary >= 20000);
-- bank account constraints
create table bank_accounts (account_no int primary key,customer_name varchar(50) not null,
    balance int check (balance >= 0)
);
-- course constraints
create table courses (course_id int primary key,
course_name varchar(50) unique not null
);
-- department and employee
create table departments1 (department_id int primary key,
    department_name varchar(50)
);

-- order constraints
create table orders1 (order_id int primary key,
    customer_id int not null,amount int check (amount > 0),
    order_date date not null
);
-- all major constraints
create table employees2 (emp_id int primary key,emp_name varchar(50) not null,
    email varchar(100) unique,salary int check (salary > 0),department_id int,
    status varchar(20) default 'active',
    foreign key (department_id)
    references departments(department_id)
);