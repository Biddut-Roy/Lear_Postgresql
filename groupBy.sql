

SELECT * from students;

SELECT major, count(*) FROM students
    GROUP BY major;


SELECT major, avg(age) FROM students
    GROUP BY major
    HAVING avg(age) > 20
    ;

SELECT extract(year FROM enrollment_date) as DOB, count(*) FROM students
    GROUP BY DOB;



