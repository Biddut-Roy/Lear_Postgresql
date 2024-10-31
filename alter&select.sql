-- Active: 1729180802319@@127.0.0.1@5432@ph
SELECT * from person2;

INSERT INTO person2 VALUES(4, 'jack' , 20) 


ALTER TABLE person2 ADD COLUMN email VARCHAR(25) DEFAULT'default@gmail.com' NOT NULL;

ALTER TABLE person2 DROP COLUMN email;

ALTER TABLE person2 RENAME COLUMN age to user_age;

ALTER TABLE person2 Alter COLUMN user_name TYPE VARCHAR(25);

ALTER TABLE person2 Alter COLUMN user_age set NOT NULL;

ALTER TABLE person2 Alter COLUMN user_age DROP NOT NULL;


-- student Table
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY ,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(255) UNIQUE,
    enrollment_date DATE,
    major VARCHAR(100)
);

DROP table students;

-- INSERT INTO students (first_name, last_name, age, email, enrollment_date, major) 
-- VALUES
-- ('John', 'Doe', 20, 'johndoe@example.com', '2022-09-01', 'Computer Science'),
-- ('Jane', 'Smith', 21, 'janesmith@example.com', '2021-09-01', 'Mathematics'),
-- ('Michael', 'Brown', 19, 'michaelbrown@example.com', '2023-01-15', 'Engineering'),
-- ('Emily', 'Davis', 22, 'emilydavis@example.com', '2020-09-01', 'Physics'),
-- ('David', 'Wilson', 23, 'davidwilson@example.com', '2019-09-01', 'Biology'),
-- ('Sophia', 'Taylor', 20, 'sophiataylor@example.com', '2022-01-15', 'Chemistry'),
-- ('James', 'Anderson', 21, 'jamesanderson@example.com', '2021-01-10', 'Business'),
-- ('Olivia', 'Thomas', 22, 'oliviathomas@example.com', '2020-02-20', 'History'),
-- ('Benjamin', 'Jackson', 23, 'benjaminjackson@example.com', '2019-04-22', 'Philosophy'),
-- ('Ava', 'White', 19, 'avawhite@example.com', '2023-03-12', 'Art'),
-- ('Liam', 'Harris', 20, 'liamharris@example.com', '2022-05-18', 'Music'),
-- ('Mia', 'Martin', 21, 'miamartin@example.com', '2021-07-24', 'Theater'),
-- ('Ethan', 'Thompson', 22, 'ethanthompson@example.com', '2020-11-02', 'Political Science'),
-- ('Isabella', 'Garcia', 23, 'isabellagarcia@example.com', '2019-12-10', 'Sociology'),
-- ('Noah', 'Martinez', 19, 'noahmartinez@example.com', '2023-01-20', 'Economics'),
-- ('Charlotte', 'Rodriguez', 20, 'charlotterodriguez@example.com', '2022-06-14', 'Anthropology'),
-- ('Lucas', 'Perez', 21, 'lucasperez@example.com', '2021-08-03', 'Psychology'),
-- ('Amelia', 'Lee', 22, 'amelialee@example.com', '2020-10-27', 'Linguistics'),
-- ('William', 'King', 23, 'williamking@example.com', '2019-09-15', 'Journalism'),
-- ('Harper', 'Lopez', 19, 'harperlopez@example.com', '2023-04-05', 'Environmental Science');


SELECT * from students;

SELECT email , age from students;

SELECT email as "student email" from students;

SELECT * from students ORDER BY first_name ASC;

SELECT * from students ORDER BY first_name DESC;


-- uniq name set DISTINCT KEY word use
SELECT DISTINCT major from students;


SELECT * from students
    WHERE major = 'Business' ;


SELECT * from students
    WHERE age != 20;


SELECT upper(first_name) from students;

SELECT concat(first_name, ' ' , last_name) as "full Name" from students;

SELECT length(first_name) from students;

-- @Aggregate Functions

SELECT avg(age) from students;

SELECT max(age) from students;

SELECT min(age) from students;

SELECT sum(age) from students;

SELECT count(age) from students;



SELECT * from students;

SELECT COALESCE(email , 'Emmy a email') from students;



SELECT * from students
    -- WHERE major = 'Business' or major = 'Economics' ;
    WHERE major IN('Business' , 'Economics') ;



SELECT * from students
  WHERE major NOT IN('Business' , 'Economics') ;


SELECT * FROM students
    WHERE age BETWEEN 19 and 25 ORDER BY age ;

-- Case sensitive Like search a name _ use a (__ 2 das 2 character )
SELECT * from students
    WHERE first_name LIKE 'S%'

SELECT * from students
    WHERE first_name LIKE '_s%'

SELECT * from students
    WHERE first_name ILIKE '%a'


SELECT * from students LIMIT 10 OFFSET 5 * 2;


DELETE from students
    WHERE age = 20

UPDATE students
    SET email = 'change@gmail.com'
    WHERE student_id = 2 ;

SELECT * FROM students