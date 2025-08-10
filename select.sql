create table student(

    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) not NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country  VARCHAR(50)
)



INSERT INTO student (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
('John', 'Smith', 18, 'A', 'Computer Science', 'john.smith@example.com', '2005-03-15', 'O+', 'United States'),
('Emily', 'Johnson', 19, 'B+', 'Mathematics', 'emily.j@example.com', '2004-07-22', 'A-', 'Canada'),
('Michael', 'Williams', 20, 'A-', 'Physics', 'michael.w@example.com', '2003-11-30', 'B+', 'United Kingdom'),
('Sarah', 'Brown', 18, 'B', 'Biology', 'sarah.b@example.com', '2005-05-10', 'AB+', 'Australia'),
('David', 'Jones', 19, 'A', 'Chemistry', 'david.j@example.com', '2004-09-18', 'O-', 'New Zealand'),
('Jessica', 'Garcia', 20, 'B+', 'Engineering', 'jessica.g@example.com', '2003-12-05', 'A+', 'United States'),
('Daniel', 'Miller', 18, 'C', 'Economics', 'daniel.m@example.com', '2005-02-28', 'B-', 'Canada'),
('Olivia', 'Davis', 19, 'A-', 'Psychology', 'olivia.d@example.com', '2004-06-14', 'O+', 'United Kingdom'),
('James', 'Rodriguez', 20, 'A', 'History', 'james.r@example.com', '2003-10-22', 'AB-', 'Australia'),
('Sophia', 'Martinez', 18, 'B', 'English', 'sophia.m@example.com', '2005-01-07', 'A-', 'New Zealand'),
('Robert', 'Hernandez', 19, 'B+', 'Political Science', 'robert.h@example.com', '2004-04-19', 'B+', 'United States'),
('Emma', 'Lopez', 20, 'A', 'Art', 'emma.l@example.com', '2003-08-11', 'O-', 'Canada'),
('William', 'Gonzalez', 18, 'C+', 'Music', 'william.g@example.com', '2005-07-03', 'A+', 'United Kingdom'),
('Ava', 'Wilson', 19, 'B', 'Philosophy', 'ava.w@example.com', '2004-11-25', 'AB+', 'Australia'),
('Christopher', 'Anderson', 20, 'A-', 'Sociology', 'chris.a@example.com', '2003-05-17', 'B-', 'New Zealand'),
('Mia', 'Thomas', 18, 'A', 'Computer Science', 'mia.t@example.com', '2005-09-08', 'O+', 'United States'),
('Joseph', 'Taylor', 19, 'B+', 'Mathematics', 'joseph.t@example.com', '2004-02-14', 'A-', 'Canada'),
('Charlotte', 'Moore', 20, 'A', 'Physics', 'charlotte.m@example.com', '2003-06-30', 'B+', 'United Kingdom'),
('Andrew', 'Jackson', 18, 'C', 'Biology', 'andrew.j@example.com', '2005-10-12', 'AB-', 'Australia'),
('Amelia', 'Martin', 19, 'B', 'Chemistry', 'amelia.m@example.com', '2004-01-24', 'O-', 'New Zealand'),
('Matthew', 'Lee', 20, 'A-', 'Engineering', 'matthew.l@example.com', '2003-04-05', 'A+', 'United States'),
('Harper', 'Perez', 18, 'A', 'Economics', 'harper.p@example.com', '2005-08-19', 'B-', 'Canada'),
('Ethan', 'Thompson', 19, 'B+', 'Psychology', 'ethan.t@example.com', '2004-12-07', 'O+', 'United Kingdom'),
('Abigail', 'White', 20, 'A', 'History', 'abigail.w@example.com', '2003-03-28', 'AB+', 'Australia'),
('Alexander', 'Harris', 18, 'C+', 'English', 'alexander.h@example.com', '2005-06-11', 'A-', 'New Zealand'),
('Ella', 'Sanchez', 19, 'B', 'Political Science', 'ella.s@example.com', '2004-09-23', 'B+', 'United States'),
('Benjamin', 'Clark', 20, 'A-', 'Art', 'benjamin.c@example.com', '2003-01-15', 'O-', 'Canada'),
('Scarlett', 'Ramirez', 18, 'A', 'Music', 'scarlett.r@example.com', '2005-04-27', 'A+', 'United Kingdom'),
('Daniel', 'Lewis', 19, 'B+', 'Philosophy', 'daniel.l@example.com', '2004-08-09', 'AB-', 'Australia'),
('Madison', 'Robinson', 20, 'A', 'Sociology', 'madison.r@example.com', '2003-02-20', 'B-', 'New Zealand');


select * from student;

select * from student ORDER BY first_name ASC;

select DISTINCT country from student;

select * from student   
    where country IN('United States', 'Canada');
select * from student   
    where country not IN('United States', 'Canada');

SELECT * from student
where dob BETWEEN '2003-01-01' and '2005-01-01' ORDER BY dob;


select * from student
    where first_name LIKE '%am';
select * from student
    where first_name LIKE '____am%';