select now();


create table timez(tz TIMESTAMP without time zone, tzs TIMESTAMP with time zone);

insert into timez VALUES('2024-02-21 03:45:46', '2023-07-02 12:32:19')

select * from timez;

select now()::date;
select now()::time;

select to_char(now(), 'dd-mm-yyyy')


select * from student;
select country, avg(age) from student
    GROUP BY country
    HAVING avg(age)  > 20;

select extract(year from dob) as born_year, count(*) from student
GROUP BY born_year
;
