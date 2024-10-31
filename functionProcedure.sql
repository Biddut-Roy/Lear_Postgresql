CREATE Function emp_count()
    RETURNS INT
    LANGUAGE SQL
    AS
    $$
        SELECT count(*) FROM employees
    $$;



SELECT emp_count()


CREATE or REPLACE Function del_count()
    RETURNS void
    LANGUAGE SQL
    AS
    $$
        DELETE FROM employees WHERE employee_id = 30;
    $$;


SELECT del_count()


CREATE or REPLACE Function del_emp_by_id(p_emp_id int)
    RETURNS void
    LANGUAGE SQL
    AS
    $$
        DELETE FROM employees WHERE employee_id = p_emp_id;
    $$;


SELECT del_emp_by_id(29)

SELECT * from employees


CREATE Procedure remove_emp()
    LANGUAGE plpgsql
    AS
    $$
        BEGIN
          DELETE FROM employees WHERE employee_id = 25;
        END
    $$

CALL remove_emp();


CREATE Procedure remove_emp_var()
    LANGUAGE plpgsql
    AS
    $$
        DECLARE
        test_var int;
        BEGIN
          SELECT employee_id INTO test_var FROM employees WHERE employee_id = 23;
          DELETE FROM employees WHERE employee_id = test_var;
        END
    $$

CALL remove_emp_var();


CREATE OR REPLACE PROCEDURE remove_emp_by_id(p_emp_id int)
LANGUAGE plpgsql
AS
$$
DECLARE
    test_var int;
BEGIN
    -- Check if the employee exists and store the ID
    SELECT employee_id INTO test_var FROM employees WHERE employee_id = p_emp_id;

    -- If no employee found, raise a notice
    IF NOT FOUND THEN
        RAISE NOTICE 'Employee with ID % does not exist', p_emp_id;
    ELSE
        -- Proceed to delete the employee
        DELETE FROM employees WHERE employee_id = test_var;
        RAISE NOTICE 'Employee with ID % removed successfully', p_emp_id;
    END IF;
END;
$$;

    CALL remove_emp_by_id(13);