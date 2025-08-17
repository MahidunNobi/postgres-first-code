
select * from employees;


create View dept_avg_salary
as 
select department, avg(salary) from employees GROUP BY department

select * from dept_avg_salary;

