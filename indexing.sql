SELECT * from employees;

EXPLAIN ANALYSE
SELECT from employees where employee_name ='Bob Smith' ;

CREATE INDEX idx_emp_name
on employees(employee_name)