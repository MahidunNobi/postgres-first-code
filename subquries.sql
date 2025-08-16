
select max(salary) from employees where department = 'HR';
select * from employees where salary > (select max(salary) from employees where department = 'HR')