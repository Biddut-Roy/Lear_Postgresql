

CREATE view dept_avg_salary
    AS
    SELECT department_name, avg(salary) FROM employees JOIN departments USING(department_id) GROUP BY department_name;

drop view  dept_avg_salary

SELECT department_name FROM employees JOIN departments USING(department_id) GROUP BY department_name

SELECT * FROM dept_avg_salary


SELECT * FROM employees;

SELECT * FROM departments;