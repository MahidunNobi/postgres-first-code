

select * from employees;

create FUNCTION emp_count()
RETURNS INT
LANGUAGE SQL
as
$$
    select count(*) from employees;
$$;

select emp_count()



create function delete_emp_by_id(p_emp_id int)
RETURNS void
LANGUAGE SQL
as
$$
    DELETE FROM employees where id = p_emp_id
$$;

select delete_emp_by_id(1)

