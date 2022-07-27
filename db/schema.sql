DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS roles; 

CREATE TABLE employees (
    id INTEGER AUTO_INCREMENT PRIMARY KEY, 
    first_name VARCHAR(30) NOT NULL, 
    last_name VARCHAR(30) NOT NULL, 
    employee_id INTEGER,
    job_title VARCHAR(30) NOT NULL,
    department VARCHAR(30) NOT NULL, 
    salary VARCHAR(30) NOT NULL, 
    reporting_manager VARCHAR(30) NOT NULL 
);

CREATE TABLE departments (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE roles (
    id INTEGER AUTO_INCREMENT PRIMARY KEY, 
    job_title VARCHAR(30) NOT NULL, 
    role_id INTEGER,
    department VARCHAR(30) NOT NULL,
    salary INTEGER,
);
