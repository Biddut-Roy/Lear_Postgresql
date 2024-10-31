CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,      -- Unique ID for each user, auto-incremented
    user_name VARCHAR(50) NOT NULL,  -- User's name, max 50 characters, cannot be NULL
    email VARCHAR(100) NOT NULL,     -- User's email, max 100 characters, cannot be NULL
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- Timestamp for when the user is created
);


INSERT INTO users (user_name, email) 
VALUES
('Alice Johnson', 'alice.johnson@example.com'),
('Bob Smith', 'bob.smith@example.com'),
('Carol White', 'carol.white@example.com'),
('David Brown', 'david.brown@example.com'),
('Emily Davis', 'emily.davis@example.com');

SELECT * from users; 


CREATE TABLE delete_table (
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    deleted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE OR REPLACE FUNCTION save_delete_user()
RETURNS TRIGGER 
LANGUAGE plpgsql
AS
$$
BEGIN
    -- Insert the deleted user data into delete_table
    INSERT INTO delete_table (user_name, email, deleted_at)
    VALUES (OLD.user_name, OLD.email, CURRENT_TIMESTAMP);
    
    RETURN OLD;  -- Return the old row
END;
$$ ;


CREATE Trigger save_delete_user_trigger
BEFORE DELETE
on users
FOR EACH ROW
EXECUTE FUNCTION save_delete_user();

DELETE FROM users WHERE user_id = 2;

SELECT * from delete_table; 