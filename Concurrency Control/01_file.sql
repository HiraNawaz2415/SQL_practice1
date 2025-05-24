-- Create the accounts table
CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    account_name VARCHAR(100),
    balance DECIMAL(10, 2)
);

-- Insert sample data
INSERT INTO accounts (account_id, account_name, balance) VALUES
(1, 'Alice', 1000.00),
(2, 'Bob', 1500.00);

-- Begin a transaction
BEGIN TRANSACTION;

-- Try to deduct 500 from Alice's account
UPDATE accounts
SET balance = balance - 500
WHERE account_id = 1;

-- Simulate a problem by updating a non-existing account
UPDATE accounts
SET balance = balance + 500
WHERE account_id = 999;  -- This will fail

-- Because of the failure above, roll back the entire transaction
ROLLBACK;
