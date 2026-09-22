
---- start with tables creation ---- 

-- Create table for storing regions
CREATE TABLE regions (
    region_id NUMBER PRIMARY KEY,
    region_name VARCHAR2(50)
);

-- Create table for storing countries
CREATE TABLE countries (
    country_id CHAR(2) PRIMARY KEY,
    country_name VARCHAR2(50) UNIQUE,
    region_id NUMBER,
    FOREIGN KEY (region_id) REFERENCES regions(region_id)
);

-- Create table for storing locations
CREATE TABLE locations (
    location_id NUMBER PRIMARY KEY,
    street_address VARCHAR2(100),
    postal_code VARCHAR2(20),
    city VARCHAR2(50),
    state_province VARCHAR2(50),
    country_id CHAR(2),
    FOREIGN KEY (country_id) REFERENCES countries(country_id)
);

-- Create table for storing job information
CREATE TABLE jobs (
    job_id VARCHAR2(10) PRIMARY KEY,
    job_title VARCHAR2(50),
    min_salary NUMBER,
    max_salary NUMBER
);

-- Create table for storing department information
CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(50) UNIQUE,
    manager_id NUMBER,
    location_id NUMBER,
    FOREIGN KEY (location_id) REFERENCES locations(location_id)
);

-- Create table for storing employee information
CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    email VARCHAR2(100) UNIQUE,
    phone_number VARCHAR2(20),
    hire_date DATE,
    job_id VARCHAR2(10),
    salary NUMBER,
    commission_pct NUMBER,
    manager_id NUMBER,
    department_id NUMBER,
    FOREIGN KEY (job_id) REFERENCES jobs(job_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);

-- Create table for storing employee job history
CREATE TABLE job_history (
    employee_id NUMBER,
    start_date DATE,
    end_date DATE,
    job_id VARCHAR2(10),
    department_id NUMBER,
    PRIMARY KEY (employee_id, start_date),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    FOREIGN KEY (job_id) REFERENCES jobs(job_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Add manager relationship to the departments table
ALTER TABLE departments
ADD CONSTRAINT fk_departments_manager
FOREIGN KEY (manager_id)
REFERENCES employees(employee_id);


----  inserting sample data  ---- 

INSERT INTO regions VALUES (1, 'Africa');
INSERT INTO regions VALUES (2, 'Europe');
INSERT INTO regions VALUES (3, 'Asia');
INSERT INTO regions VALUES (4, 'North America');
INSERT INTO regions VALUES (5, 'South America');


INSERT INTO countries VALUES ('RW', 'Rwanda', 1);
INSERT INTO countries VALUES ('KE', 'Kenya', 1);
INSERT INTO countries VALUES ('FR', 'France', 2);
INSERT INTO countries VALUES ('JP', 'Japan', 3);
INSERT INTO countries VALUES ('US', 'United States', 4);


INSERT INTO locations VALUES (1000, 'KG 7 Ave', '00000', 'Kigali', 'Kigali', 'RW');
INSERT INTO locations VALUES (1001, 'Nairobi Road', '00100', 'Nairobi', 'Nairobi', 'KE');
INSERT INTO locations VALUES (1002, 'Rue de Paris', '75001', 'Paris', 'Ile-de-France', 'FR');
INSERT INTO locations VALUES (1003, 'Tokyo Street', '100-0001', 'Tokyo', 'Tokyo', 'JP');
INSERT INTO locations VALUES (1004, '5th Avenue', '10001', 'New York', 'New York', 'US');


INSERT INTO jobs VALUES (1, 'Software Developer', 3000, 7000);
INSERT INTO jobs VALUES (2, 'Database Administrator', 3500, 8000);
INSERT INTO jobs VALUES (3, 'Project Manager', 4000, 9000);
INSERT INTO jobs VALUES (4, 'System Analyst', 3000, 7500);
INSERT INTO jobs VALUES (5, 'HR Manager', 3500, 8000);

-- Display table structures
DESC employees;
DESC departments;

INSERT INTO departments VALUES (10, 'IT', NULL, 1000);
INSERT INTO departments VALUES (20, 'Database', NULL, 1001);
INSERT INTO departments VALUES (30, 'Management', NULL, 1002);
INSERT INTO departments VALUES (40, 'Systems', NULL, 1003);
INSERT INTO departments VALUES (50, 'Human Resources', NULL, 1004);


INSERT INTO employees VALUES
(101, 'John', 'Mugisha', 'john.mugisha@email.com', '0788000001',
 DATE '2022-01-15', '1', 6000, NULL, NULL, 10);

INSERT INTO employees VALUES
(102, 'Alice', 'Uwase', 'alice.uwase@email.com', '0788000002',
 DATE '2021-05-20', '2', 6500, NULL, 101, 20);

INSERT INTO employees VALUES
(103, 'David', 'Niyonzima', 'david.niyonzima@email.com', '0788000003',
 DATE '2023-02-10', '3', 7500, NULL, 101, 30);

INSERT INTO employees VALUES
(104, 'Sarah', 'Mukamana', 'sarah.mukamana@email.com', '0788000004',
 DATE '2020-09-12', '4', 5800, NULL, 103, 40);

INSERT INTO employees VALUES
(105, 'Eric', 'Habimana', 'eric.habimana@email.com', '0788000005',
 DATE '2024-03-18', '5', 6200, NULL, 101, 50);

-- Assign managers to departments
UPDATE departments SET manager_id = 101 WHERE department_id = 10;
UPDATE departments SET manager_id = 102 WHERE department_id = 20;
UPDATE departments SET manager_id = 103 WHERE department_id = 30;
UPDATE departments SET manager_id = 104 WHERE department_id = 40;
UPDATE departments SET manager_id = 105 WHERE department_id = 50; 


INSERT INTO job_history VALUES (101, DATE '2020-01-10', DATE '2021-12-31', 4, 40);
INSERT INTO job_history VALUES (102, DATE '2019-06-15', DATE '2021-04-30', 1, 10);
INSERT INTO job_history VALUES (103, DATE '2021-01-05', DATE '2022-12-31', 4, 40);
INSERT INTO job_history VALUES (104, DATE '2018-03-20', DATE '2020-08-31', 1, 10);
INSERT INTO job_history VALUES (105, DATE '2022-01-10', DATE '2024-02-29', 1, 10);


----  check for existing data  ----

SELECT * FROM regions;
SELECT * FROM countries;
SELECT * FROM locations;
SELECT * FROM jobs;
SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM job_history;
