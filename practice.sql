
-- First create the tables
CREATE TABLE departments (
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    salary NUMERIC(10,2),
    hire_date DATE,
    manager_id INTEGER REFERENCES employees(id),
    skills JSONB
);

CREATE TABLE projects (
    project_id SERIAL PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    budget NUMERIC(15,2),
    start_date DATE,
    end_date DATE
);

CREATE TABLE employee_projects (
    emp_id INTEGER REFERENCES employees(id),
    project_id INTEGER REFERENCES projects(project_id),
    hours_worked NUMERIC(6,2),
    PRIMARY KEY (emp_id, project_id)
);

-- Insert department data
INSERT INTO departments (dept_name) VALUES 
('Engineering'), ('Sales'), ('Marketing'), ('HR'), ('Finance'), ('Operations');

-- Insert employee data (with managers and skills)
INSERT INTO employees (name, department, salary, hire_date, manager_id, skills) VALUES
-- Engineering department (manager: Alice Johnson)
('Alice Johnson', 'Engineering', 120000, '2018-06-15', NULL, 
 '["PostgreSQL", "Python", "Team Leadership", "System Design"]'),
('Bob Smith', 'Engineering', 95000, '2019-03-22', 1,
 '["Java", "Python", "SQL", "Docker"]'),
('Charlie Brown', 'Engineering', 85000, '2020-11-05', 1,
 '["JavaScript", "React", "Node.js"]'),
('Diana Prince', 'Engineering', 110000, '2017-09-12', 1,
 '["PostgreSQL", "Python", "Machine Learning", "Data Analysis"]'),
('Evan Wright', 'Engineering', 78000, '2021-07-30', 1,
 '["C++", "Algorithms", "Debugging"]'),

('Fiona Green', 'Sales', 105000, '2017-05-18', NULL,
 '["Negotiation", "CRM", "Team Leadership", "Public Speaking"]'),
('George Harris', 'Sales', 65000, '2020-02-14', 6,
 '["Cold Calling", "CRM", "Product Knowledge"]'),
('Hannah Lee', 'Sales', 72000, '2019-08-22', 6,
 '["Account Management", "Presentation Skills", "CRM"]'),
('Ian Cooper', 'Sales', 58000, '2022-01-10', 6,
 '["Salesforce", "Lead Generation"]'),

('Julia Kim', 'Marketing', 98000, '2018-04-05', NULL,
 '["Digital Marketing", "SEO", "Team Leadership", "Content Strategy"]'),
('Kevin Martin', 'Marketing', 67000, '2020-07-15', 10,
 '["Social Media", "Graphic Design"]'),
('Lisa Wong', 'Marketing', 75000, '2019-11-30', 10,
 '["Market Research", "Data Analysis", "Google Analytics"]'),


('Mike Johnson', 'HR', 82000, '2018-02-28', NULL,
 '["Recruitment", "Employee Relations", "HR Policies"]'),
('Nancy Drew', 'HR', 68000, '2021-05-17', 13,
 '["Onboarding", "Benefits Administration"]'),


('Oscar Martinez', 'Finance', 115000, '2016-09-10', NULL,
 '["Financial Modeling", "Excel", "Team Leadership", "GAAP"]'),
('Pam Beesly', 'Finance', 73000, '2019-04-22', 15,
 '["Accounts Payable", "QuickBooks"]'),
('Quincy Adams', 'Finance', 89000, '2018-08-14', 15,
 '["Financial Reporting", "Tax Preparation"]'),


('Rachel Adams', 'Operations', 102000, '2017-12-03', NULL,
 '["Process Improvement", "Team Leadership", "Supply Chain"]'),
('Steve Jobs', 'Operations', 88000, '2019-06-25', 18,
 '["Inventory Management", "Logistics"]'),
('Tina Fey', 'Operations', 76000, '2020-09-18', 18,
 '["Vendor Management", "Process Documentation"]');


INSERT INTO projects (project_name, budget, start_date, end_date) VALUES
('Website Redesign', 50000, '2023-01-15', '2023-06-30'),
('CRM Implementation', 120000, '2023-03-01', '2023-12-15'),
('Market Analysis 2023', 75000, '2023-02-10', '2023-05-20'),
('Employee Portal', 65000, '2023-04-05', '2023-08-30'),
('Financial System Upgrade', 95000, '2023-05-01', '2023-11-15'),
('Product Launch Q4', 150000, '2023-07-01', '2023-12-31');

-- Assign employees to projects
INSERT INTO employee_projects (emp_id, project_id, hours_worked) VALUES
-- Website Redesign
(2, 1, 120), (3, 1, 80), (4, 1, 60), (11, 1, 40),
-- CRM Implementation
(6, 2, 150), (7, 2, 200), (8, 2, 180), (9, 2, 90), (13, 2, 50),
-- Market Analysis 2023
(10, 3, 100), (11, 3, 70), (12, 3, 120),
-- Employee Portal
(1, 4, 60), (2, 4, 100), (13, 4, 80), (14, 4, 60),
-- Financial System Upgrade
(15, 5, 150), (16, 5, 200), (17, 5, 180),
-- Product Launch Q4
(6, 6, 100), (10, 6, 120), (12, 6, 90), (18, 6, 80), (19, 6, 110), (20, 6, 70);



select * from employees WHERE department = 'Sales';
select avg(salary) as avg_salary from employees;
select * from employees WHERE extract(YEAR FROM hire_date)>2020;

select * from employees where department = 'Engineering' and salary >50000;

select extract(year from hire_date), count(id) from employees
    GROUP BY extract(year from hire_date);

select * from departments;

select "name", department from employees;

select department, avg(salary) from employees
    GROUP BY department ORDER BY avg DESC LIMIT 1;

Alter Table employees add COLUMN department_id INTEGER;

alter table employees add constraint fk_department FOREIGN KEY (department_id) REFERENCES departments(dept_id);


select department, count(id) from employees
    GROUP BY department;

