CREATE DATABASE employees;
USE employees;
CREATE TABLE departments(department_id int, department_name varchar(100));
CREATE TABLE location(location_id int,location varchar(30));
CREATE TABLE employees(employee_id int, employee_name varchar(50),
gender enum('M','F'), age int, hire_date date,  designation varchar(100),
department_id int, location_id int, salary decimal(10.2));
ALTER TABLE employees ADD COLUMN email varchar(50);
ALTER TABLE employees MODIFY COLUMN designation text;
ALTER TABLE employees DROP COLUMN age;
ALTER TABLE employees RENAME COLUMN hire_date to date_of_joining;
RENAME TABLE departments to departments_Info;
RENAME TABLE location to locations;
ALTER TABLE departments_Info ADD UNIQUE(department_id);
ALTER TABLE departments_Info MODIFY COLUMN department_name varchar(100) NOT NULL, ADD UNIQUE(department_name);
ALTER TABLE locations MODIFY location_id int PRIMARY KEY AUTO_INCREMENT;
ALTER TABLE locations MODIFY location varchar(30) NOT NULL UNIQUE KEY;
ALTER TABLE employees MODIFY employee_id int PRIMARY KEY;
ALTER TABLE employees MODIFY employee_name varchar(50) NOT NULL;
ALTER TABLE employees MODIFY gender enum('M','F') CHECK (gender IN ('M','F'));
ALTER TABLE employees ADD column age int CHECK (age>=18);
ALTER TABLE employees MODIFY date_of_joining date DEFAULT(CURRENT_DATE);
ALTER TABLE departments_Info MODIFY department_id int PRIMARY KEY;
ALTER TABLE employees ADD FOREIGN KEY(department_id) REFERENCES departments_Info(department_id);
ALTER TABLE employees ADD FOREIGN KEY(location_id) REFERENCES locations(location_id);
TRUNCATE TABLE employees;
DROP TABLE employees;
DROP DATABASE employees;

SELECT * FROM employees;