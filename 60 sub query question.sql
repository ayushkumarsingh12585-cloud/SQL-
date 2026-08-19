create database y;
use y;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    manager_id INT,
    hire_year INT
);

INSERT INTO employees
(emp_id, emp_name, department, salary, manager_id, hire_year)
VALUES
(101, 'Alice Johnson', 'IT', 72000, NULL, 2018),
(102, 'Bob Smith', 'IT', 65000, 101, 2019),
(103, 'Carol White', 'HR', 58000, NULL, 2017),
(104, 'David Brown', 'HR', 54000, 103, 2020),
(105, 'Eva Green', 'Finance', 80000, NULL, 2016),
(106, 'Frank Black', 'Finance', 75000, 105, 2018),
(107, 'Grace Lee', 'IT', 68000, 101, 2021),
(108, 'Henry Wilson', 'Marketing', 60000, NULL, 2017),
(109, 'Ivy Turner', 'Marketing', 56000, 108, 2022),
(110, 'Jack Davis', 'Finance', 70000, 105, 2019),
(111, 'Karen Moore', 'IT', 63000, 101, 2020),
(112, 'Leo Harris', 'HR', 50000, 103, 2021),
(113, 'Mia Clark', 'Marketing', 62000, 108, 2018),
(114, 'Nate Lewis', 'Finance', 78000, 105, 2019),
(115, 'Olivia Walker', 'IT', 71000, 101, 2017),
(116, 'Paul Hall', 'HR', 53000, 103, 2020),
(117, 'Quinn Young', 'Marketing', 59000, 108, 2021),
(118, 'Rachel King', 'Finance', 82000, 105, 2016),
(119, 'Sam Scott', 'IT', 66000, 101, 2022),
(120, 'Tina Adams', 'HR', 55000, 103, 2019);



CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    country VARCHAR(30),
    join_year INT
);

INSERT INTO customers
(customer_id, customer_name, city, country, join_year)
VALUES
(201, 'Aarav Mehta', 'Mumbai', 'India', 2021),
(202, 'Priya Sharma', 'Delhi', 'India', 2020),
(203, 'Rohan Gupta', 'Pune', 'India', 2022),
(204, 'Sunita Patel', 'Ahmedabad', 'India', 2021),
(205, 'Vikram Rao', 'Bangalore', 'India', 2019),
(206, 'Neha Singh', 'Chennai', 'India', 2023),
(207, 'Arjun Kumar', 'Hyderabad', 'India', 2020),
(208, 'Deepa Nair', 'Kochi', 'India', 2022),
(209, 'Sanjay Joshi', 'Jaipur', 'India', 2021),
(210, 'Meera Iyer', 'Coimbatore', 'India', 2023),
(211, 'Ravi Verma', 'Lucknow', 'India', 2020),
(212, 'Anita Das', 'Kolkata', 'India', 2019),
(213, 'Kiran Reddy', 'Vizag', 'India', 2022),
(214, 'Pooja Shah', 'Surat', 'India', 2021),
(215, 'Amit Bose', 'Nagpur', 'India', 2023),
(216, 'Tara Menon', 'Trivandrum', 'India', 2020),
(217, 'Nikhil Kulkarni', 'Nashik', 'India', 2022),
(218, 'Swati Chatterjee', 'Bhopal', 'India', 2019),
(219, 'Rahul Pandey', 'Patna', 'India', 2021),
(220, 'Divya Tiwari', 'Indore', 'India', 2023);




CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(30),
    price INT,
    stock_qty INT
);

INSERT INTO products
(product_id, product_name, category, price, stock_qty)
VALUES
(301, 'Laptop', 'Electronics', 55000, 30),
(302, 'Smartphone', 'Electronics', 22000, 80),
(303, 'Headphones', 'Electronics', 3500, 120),
(304, 'Monitor', 'Electronics', 18000, 45),
(305, 'Keyboard', 'Accessories', 1500, 200),
(306, 'Mouse', 'Accessories', 900, 250),
(307, 'Desk Chair', 'Furniture', 8500, 40),
(308, 'Standing Desk', 'Furniture', 22000, 15),
(309, 'Webcam', 'Electronics', 4200, 70),
(310, 'USB Hub', 'Accessories', 1200, 180),
(311, 'Notebook', 'Stationery', 150, 500),
(312, 'Pen Set', 'Stationery', 250, 600),
(313, 'Printer', 'Electronics', 12000, 25),
(314, 'Scanner', 'Electronics', 9000, 20),
(315, 'External SSD', 'Electronics', 7500, 60),
(316, 'Lamp', 'Furniture', 2200, 90),
(317, 'Whiteboard', 'Office Supplies', 3800, 35),
(318, 'Cable Organiser', 'Accessories', 600, 300),
(319, 'Power Bank', 'Electronics', 2800, 100),
(320, 'Smart Watch', 'Electronics', 15000, 55);


CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    amount DECIMAL(10,2),
    order_date DATE,
    status VARCHAR(20)
);

INSERT INTO orders
(order_id, customer_id, product_id, amount, order_date, status)
VALUES
(1001, 201, 301, 1500, '2024-01-05', 'Delivered'),
(1002, 202, 302, 2300, '2024-01-12', 'Delivered'),
(1003, 203, 303, 800, '2024-02-03', 'Delivered'),
(1004, 201, 304, 3200, '2024-02-14', 'Delivered'),
(1005, 204, 301, 1100, '2024-03-01', 'Pending'),
(1006, 205, 302, 4500, '2024-03-15', 'Delivered'),
(1007, 202, 303, 950, '2024-03-22', 'Cancelled'),
(1008, 206, 304, 2100, '2024-04-05', 'Delivered'),
(1009, 203, 301, 1750, '2024-04-18', 'Pending'),
(1010, 207, 302, 3300, '2024-04-30', 'Delivered'),
(1011, 204, 303, 680, '2024-05-10', 'Cancelled'),
(1012, 208, 304, 2900, '2024-05-22', 'Delivered'),
(1013, 205, 301, 1200, '2024-06-08', 'Delivered'),
(1014, 201, 302, 2700, '2024-06-15', 'Pending'),
(1015, 209, 303, 500, '2024-06-28', 'Delivered'),
(1016, 206, 304, 3800, '2024-07-07', 'Delivered'),
(1017, 207, 301, 1600, '2024-07-19', 'Delivered'),
(1018, 210, 302, 4100, '2024-07-25', 'Delivered'),
(1019, 208, 303, 720, '2024-08-02', 'Cancelled'),
(1020, 209, 304, 2200, '2024-08-14', 'Delivered');




CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(30),
    budget INT,
    location VARCHAR(50),
    head_id INT
);

INSERT INTO departments
(dept_id, dept_name, budget, location, head_id)
VALUES
(1, 'IT', 500000, 'Bangalore', 101),
(2, 'HR', 200000, 'Mumbai', 103),
(3, 'Finance', 600000, 'Delhi', 105),
(4, 'Marketing', 300000, 'Chennai', 108);


SHOW TABLES;

SELECT COUNT(*) FROM employees;
SELECT COUNT(*) FROM orders;
SELECT COUNT(*) FROM products;
SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM departments;


SELECT emp_name, department, salary
FROM employees WHERE salary > (SELECT AVG(salary)FROM employees); -- 1

SELECT emp_id, emp_name, department, salary FROM employees WHERE salary = (SELECT MAX(salary)FROM employees); -- 2

SELECT emp_id, emp_name, department, salary FROM employees WHERE salary = (SELECT MIN(salary)FROM employees); -- 3

SELECT emp_name, department, hire_year FROM employees WHERE hire_year = (SELECT hire_year FROM employees WHERE emp_name = 'Rachel King')AND emp_name <> 'Rachel King'; -- 4

select product_name, category, price from products where price > (SELECT AVG(price)FROM products) order by price desc;-- 5

select product_id, product_name, category, price from products where price = (SELECT max(price)FROM products); -- 6

 select product_id, product_name, category, price from products where price = (SELECT min(price)FROM products); -- 7
 
 
select order_id, customer_id,amount from orders where amount >(select avg(amount) from orders) ; -- 8 


select order_id, customer_id,amount,order_date from orders where
 amount =(select max(amount) from orders) ; -- 9

select customer_id, customer_name, city from customers where
 customer_id in (select customer_id from orders) order by customer_id; -- 10

select customer_id, customer_name, city from customers where
 customer_id not in (select customer_id from orders) order by customer_id; -- 11

select  product_id, product_name, category, price from products where product_id in (select product_id from orders) ; -- 12

select  product_id, product_name, category, price from products where product_id not in (select product_id from orders) ; -- 13

SELECT emp_name, salary FROM employees WHERE department IN
 (SELECT dept_name FROM departments WHERE dept_name = 'Finance')ORDER BY salary DESC;-- 14

select emp_name, department, salary from employees where 
salary<(select min(salary) from employees where department = 'Finance') order by salary desc; -- 15

select dept_name , budget, location from departments where 
budget = (select max(budget) from departments); -- 16

SELECT customer_id, customer_name, city FROM customers WHERE customer_id IN (SELECT customer_id FROM orders GROUP BY customer_id HAVING COUNT(*) = 1); -- 17


SELECT customer_id, customer_name, city FROM customers WHERE 
customer_id IN (SELECT customer_id FROM orders GROUP BY customer_id HAVING COUNT(*) >= 2) order by customer_id; -- 18

select  product_name, category,  price from products where price>(select max(price) from products where category = 'accessories') order by price desc; -- 19

SELECT order_id, customer_id, amount, order_date FROM orders 
WHERE customer_id IN (SELECT customer_id FROM customers WHERE join_year = 2021)ORDER BY order_date;-- 20

SELECT e.emp_id, e.emp_name, e.department FROM employees e
 WHERE EXISTS (SELECT 1 FROM employees e2 WHERE e2.manager_id = e.emp_id)ORDER BY e.emp_name; -- 21

select emp_id, emp_name, department from employees e1
 where not exists (select 1 from employees e2 where e2.manager_id = e1.emp_id) order by emp_id; -- 22

select customer_id, customer_name, city from customers c where exists (select 1 from orders o where o.customer_id = c.customer_id)order by customer_id;-- 23

select customer_id, customer_name, city from customers c where not exists (select 1 from orders o where o.customer_id = c.customer_id)order by customer_id;-- 24

select product_id, product_name, category from products p 
where exists (select 1 from orders o where o.product_id = p.product_id)order by product_id;-- 25

select emp_name , department, salary from employees e where
 department = (select department from employees where emp_id = 105) and emp_id <> 105 order by salary desc; -- 26

select  order_id, customer_id, amount, order_date from
 orders where order_date = (select max(order_date) from orders); -- 27

select  order_id, customer_id, amount, order_date from
 orders where order_date = (select min(order_date) from orders); -- 28

select  emp_name, department, salary  from employees where salary > (select max(salary) from employees where department = 'hr')order by salary; -- 29

 select  order_id, customer_id, amount, status from orders
 where amount >(select avg(amount) from orders where status ='delivered') and status = 'delivered' order by amount desc; -- 30 
 
 
SELECT e.emp_name,e.department,e.salary,ROUND((SELECT AVG(e2.salary)FROM employees e2 WHERE e2.department = e.department), 2) AS dept_avg FROM employees e
WHERE e.salary > (SELECT AVG(e3.salary)FROM employees e3 WHERE e3.department = e.department)ORDER BY e.department, e.salary DESC; -- 31


SELECT e.emp_name,e.department,e.salary,(SELECT COUNT(*)FROM employees e2 WHERE
 e2.department = e.department AND e2.salary > e.salary) AS higher_earners FROM employees e ORDER BY e.department, e.salary DESC; -- 32


SELECT c.customer_id,c.customer_name,(SELECT SUM(o1.amount)FROM orders o1 WHERE
 o1.customer_id = c.customer_id) AS total_spend FROM customers c WHERE (sELECT SUM(o2.amount)FROM orders o2 WHERE o2.customer_id = c.customer_id) > (SELECT AVG(customer_total) FROM (SELECT SUM(amount) AS customer_total FROM orders GROUP BY customer_id) AS totals)ORDER BY total_spend DESC; -- 33


SELECT emp_name, department, salary FROM employees WHERE department IN
 (SELECT department FROM employees GROUP BY department HAVING AVG(salary) > 65000) ORDER BY department, salary DESC; -- 34


SELECT o.order_id, o.customer_id, o.amount, CASE WHEN o.amount >= (SELECT AVG(o2.amount) FROM orders o2 
WHERE o2.customer_id = o.customer_id) THEN 'Above Avg' ELSE 'Below Avg' END AS vs_cust_avg FROM orders o ORDER BY o.customer_id, o.order_id; -- 35

SELECT p.product_name, p.category, p.price, ROUND((SELECT AVG(p2.price) FROM products p2 WHERE p2.category = p.category ), 2) AS cat_avg FROM products p WHERE p.price > (SELECT AVG(p3.price) FROM products p3 WHERE p3.category = p.category ) ORDER BY p.category, p.price DESC; -- 36


SELECT emp_name, department, salary FROM employees WHERE salary > ANY (SELECT salary FROM employees WHERE department = 'Marketing') ORDER BY salary DESC; -- 37


SELECT emp_name, department, salary FROM employees WHERE salary < ALL (SELECT salary FROM employees WHERE department = 'Finance') ORDER BY salary DESC; -- 38


SELECT customer_id, customer_name FROM customers c WHERE EXISTS (SELECT 1 FROM orders o WHERE o.customer_id = c.customer_id) AND NOT EXISTS (SELECT 1 FROM orders o2 WHERE o2.customer_id = c.customer_id AND o2.status <> 'Delivered') ORDER BY customer_id; -- 39


SELECT product_id, product_name, category FROM products WHERE product_id IN (SELECT product_id FROM orders WHERE customer_id IN (SELECT customer_id FROM customers WHERE city = 'Mumbai')) ORDER BY product_id; -- 40


SELECT emp_name, department, salary FROM employees WHERE salary = (SELECT MAX(salary) FROM employees WHERE salary < (SELECT MAX(salary) FROM employees)); -- 41


SELECT DISTINCT e1.department FROM employees e1 WHERE NOT EXISTS (SELECT 1 FROM employees e2 WHERE e2.department = e1.department AND e2.salary <= 50000) ORDER BY e1.department; -- 42


SELECT c.customer_id, c.customer_name FROM customers c WHERE (SELECT COUNT(DISTINCT o.product_id) FROM orders o WHERE o.customer_id = c.customer_id) >= 2 ORDER BY c.customer_id; -- 43


SELECT e.emp_name, e.department, e.salary, e.hire_year, ROUND((SELECT AVG(e2.salary) FROM employees e2 WHERE e2.hire_year = e.hire_year), 2) 
AS year_avg FROM employees e WHERE e.salary > (SELECT AVG(e3.salary) FROM employees e3 WHERE e3.hire_year = e.hire_year)
 ORDER BY e.hire_year, e.salary DESC; -- Q44


SELECT p.product_name, p.category, p.stock_qty, ROUND((SELECT AVG(p2.stock_qty) FROM products p2 WHERE p2.category = p.category), 2)
 AS cat_avg_stock FROM products p WHERE p.stock_qty < (SELECT AVG(p3.stock_qty) FROM products p3 WHERE p3.category = p.category) 
 ORDER BY p.category, p.stock_qty ASC; -- Q45


SELECT emp_name, department, salary FROM employees WHERE salary IN (SELECT salary FROM (SELECT DISTINCT salary FROM employees ORDER BY salary DESC LIMIT 3) AS top3) ORDER BY salary DESC;-- 46

SELECT customer_id, customer_name FROM customers c WHERE EXISTS (SELECT 1 FROM orders o WHERE o.customer_id = c.customer_id) AND NOT EXISTS (SELECT 1 FROM orders o2 WHERE o2.customer_id = c.customer_id AND o2.amount <= 1000) ORDER BY customer_id; -- Q47


SELECT e.emp_name, e.department, e.salary, ROUND((SELECT AVG(e2.salary) FROM employees e2 WHERE e2.department = e.department), 2) AS dept_avg, ABS(e.salary - (SELECT AVG(e3.salary) FROM employees e3 WHERE e3.department = e.department)) AS diff FROM employees e WHERE ABS(e.salary - (SELECT AVG(e4.salary) FROM employees e4 WHERE e4.department = e.department)) = (SELECT MIN(ABS(e5.salary - (SELECT AVG(e6.salary) FROM employees e6 WHERE e6.department = e5.department))) FROM employees e5 WHERE e5.department = e.department) ORDER BY e.department; -- Q48


SELECT c.customer_id, c.customer_name FROM customers c WHERE c.customer_id <> 201 AND NOT EXISTS (SELECT 1 FROM orders o201 WHERE o201.customer_id = 201 AND NOT EXISTS (SELECT 1 FROM orders oc WHERE oc.customer_id = c.customer_id AND oc.product_id = o201.product_id)) ORDER BY c.customer_id; -- Q49


SELECT department, SUM(salary) AS dept_total FROM employees GROUP BY department HAVING SUM(salary) > (SELECT MIN(dept_total) FROM (SELECT SUM(salary) AS dept_total FROM employees GROUP BY department) AS dept_totals) ORDER BY dept_total DESC; -- Q50


SELECT e.emp_name, e.salary AS emp_salary, (SELECT m.emp_name FROM employees m WHERE m.emp_id = e.manager_id) AS manager_name, (SELECT m.salary FROM employees m WHERE m.emp_id = e.manager_id) AS manager_salary FROM employees e WHERE e.manager_id IS NOT NULL AND e.salary > (SELECT m.salary FROM employees m WHERE m.emp_id = e.manager_id) ORDER BY emp_salary DESC; -- Q51


SELECT p.product_id, p.product_name, (SELECT COUNT(*) FROM orders o WHERE o.product_id = p.product_id) AS order_count FROM products p WHERE (SELECT COUNT(*) FROM orders o WHERE o.product_id = p.product_id) > (SELECT AVG(cnt) FROM (SELECT COUNT(*) AS cnt FROM orders GROUP BY product_id) AS product_counts); -- Q52


SELECT c.customer_id, c.customer_name, (SELECT MAX(o.amount) FROM orders o WHERE o.customer_id = c.customer_id) AS best_order FROM customers c WHERE (SELECT MAX(o.amount) FROM orders o WHERE o.customer_id = c.customer_id) = (SELECT MAX(amount) FROM orders) ORDER BY c.customer_id; -- Q53


SELECT emp_name, department, salary FROM employees WHERE
 department IN (SELECT dept_name FROM departments WHERE budget > (SELECT AVG(budget) FROM departments)) ORDER BY department, salary DESC; -- Q54

SELECT c.customer_id, c.customer_name, (SELECT COUNT(*) FROM orders o 
WHERE o.customer_id = c.customer_id AND o.amount > (SELECT AVG(o2.amount) FROM orders o2 WHERE o2.customer_id = c.customer_id)) AS orders_above_avg FROM customers c WHERE EXISTS (SELECT 1 FROM orders o3 WHERE o3.customer_id = c.customer_id) ORDER BY orders_above_avg DESC, c.customer_id; -- Q55

SELECT p.product_id, p.product_name, (SELECT MIN(c.city) FROM customers c WHERE c.customer_id IN (SELECT o.customer_id FROM orders o WHERE o.product_id = p.product_id)) AS only_city FROM products p 
WHERE p.product_id IN (SELECT DISTINCT product_id FROM orders) AND (SELECT COUNT(DISTINCT c2.city) FROM customers c2 WHERE c2.customer_id IN (SELECT o2.customer_id FROM orders o2 WHERE o2.product_id = p.product_id)) = 1; -- Q56

SELECT e.emp_name, e.department, e.salary FROM employees e WHERE 
e.salary = (SELECT MAX(e2.salary) FROM employees e2 WHERE e2.department = e.department) AND (SELECT COUNT(*) FROM employees e3 WHERE e3.department = e.department AND e3.salary = e.salary) = 1 ORDER BY e.salary DESC; -- Q57

SELECT c.customer_id, c.customer_name, (SELECT SUM(o.amount) FROM orders o WHERE 
o.customer_id = c.customer_id) AS total_spend FROM customers c WHERE (SELECT SUM(o.amount) FROM orders o WHERE o.customer_id = c.customer_id) > 2 * (SELECT AVG(total_spend) FROM (SELECT SUM(amount) AS total_spend FROM orders GROUP BY customer_id) AS customer_totals) ORDER BY total_spend DESC; -- Q58

SELECT d.department, (SELECT COUNT(*) FROM employees e WHERE e.department = d.department AND e.salary > (SELECT AVG(salary) FROM employees)) AS above_avg_count FROM (SELECT DISTINCT department FROM employees) AS d ORDER BY above_avg_count DESC LIMIT 1; -- Q59

SELECT e.emp_name, e.department, e.salary FROM employees e WHERE
 e.salary = (SELECT MAX(e2.salary) FROM employees e2 WHERE e2.department = e.department) AND (SELECT COUNT(DISTINCT e3.salary) FROM 
 employees e3 WHERE e3.salary > e.salary) >= 3 ORDER BY e.salary DESC; -- Q60
