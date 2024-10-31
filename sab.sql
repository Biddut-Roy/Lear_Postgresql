CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT REFERENCES departments(department_id),
    salary DECIMAL(10, 2),
    hire_date DATE
);


INSERT INTO employees (employee_name, department_id, salary, hire_date) 
VALUES 
('Alice Johnson', 1, 55000.00, '2022-03-01'),
('Bob Smith', 2, 75000.00, '2021-07-15'),
('Carol White', 3, 62000.00, '2020-09-30'),
('David Brown', 4, 58000.00, '2022-05-25'),
('Emily Davis', 1, 53000.00, '2022-01-15'),
('Frank Harris', 2, 80000.00, '2019-11-10'),
('Grace Lee', 3, 68000.00, '2020-06-18'),
('Hank Wilson', 4, 56000.00, '2023-01-12'),
('Ivy Taylor', 1, 59000.00, '2021-08-24'),
('Jack Lewis', 2, 77000.00, '2018-03-20'),
('Karen Hall', 3, 63000.00, '2019-12-11'),
('Liam Clark', 4, 61000.00, '2020-02-15'),
('Mia Adams', 1, 52000.00, '2022-09-19'),
('Noah Allen', 2, 76000.00, '2023-04-01'),
('Olivia Wright', 3, 64000.00, '2021-06-07'),
('Peter King', 4, 55000.00, '2022-10-30'),
('Quinn Scott', 1, 54000.00, '2021-07-05'),
('Ruby Baker', 2, 79000.00, '2022-03-14'),
('Sam Cooper', 3, 67000.00, '2019-05-21'),
('Tina Rivera', 4, 58000.00, '2023-08-13'),
('Uma Nelson', 1, 56000.00, '2020-11-27'),
('Victor Morgan', 2, 81000.00, '2021-02-02'),
('Wendy Parker', 3, 66000.00, '2018-12-20'),
('Xander Ross', 4, 59000.00, '2021-09-15'),
('Yara Lopez', 1, 53000.00, '2019-07-10'),
('Zachary Perez', 2, 78000.00, '2020-10-05'),
('Abby Mitchell', 3, 61000.00, '2021-03-03'),
('Ben Carter', 4, 60000.00, '2022-06-17'),
('Chloe Hughes', 1, 57000.00, '2021-01-22'),
('Daniel Martin', 2, 75000.00, '2019-09-08');


SELECT * FROM employees;

SELECT * FROM departments;

SELECT * 
FROM employees 
JOIN departments 
ON employees.department_id = departments.department_id;


SELECT * FROM employees JOIN departments USING(department_id);

SELECT employee_name, department_name, salary, hire_date 
FROM employees 
JOIN departments USING(department_id) WHERE department_name = 'HR';


SELECT max(salary) 
    FROM employees 
    JOIN departments USING(department_id) WHERE department_name = 'HR';



SELECT * 
FROM employees 
JOIN departments USING(department_id)
WHERE salary > (
    SELECT MAX(salary) 
    FROM employees 
    JOIN departments USING(department_id)
    WHERE department_name = 'HR'
);
