
select * from employees;


create table deleted_employees (    
    emp_name VARCHAR(50),
    deleted_time TIMESTAMP
    );


create OR replace function save_deleted_emp()
RETURNS TRIGGER
LANGUAGE PLPGSQL
AS
$$
    BEGIN
        insert into deleted_employees VALUES (OLD."name", now());
        RAISE NOTICE 'Deleted user log created.';
        return OLD;
    END
$$
;




CREATE TRIGGER save_deleted_emp_trigger
before DELETE
on employees
FOR each ROW
execute function save_deleted_emp();



delete from employees WHERE id=1;