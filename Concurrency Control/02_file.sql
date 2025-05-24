-- 1. Lost Update Example
-- Two transactions updating same data without proper locking

-- Transaction A
BEGIN TRANSACTION;
SELECT balance FROM accounts WHERE account_id = 1; -- balance = 100
-- (User A sees 100)

-- Transaction B
BEGIN TRANSACTION;
SELECT balance FROM accounts WHERE account_id = 1; -- balance = 100
-- (User B sees 100)
UPDATE accounts SET balance = 130 WHERE account_id = 1;
COMMIT; -- User B commits update

-- Now User A continues
UPDATE accounts SET balance = 150 WHERE account_id = 1;
COMMIT; -- This overwrites User B's update

-- 2. Dirty Read Example
-- User B reads data that is not committed by User A

-- Transaction A
BEGIN TRANSACTION;
UPDATE accounts SET balance = 200 WHERE account_id = 1;
-- No COMMIT yet

-- Transaction B
BEGIN TRANSACTION;
SELECT balance FROM accounts WHERE account_id = 1; -- Reads uncommitted value = 200
-- Dirty read happens here

-- Transaction A
ROLLBACK; -- The update is undone

-- 3. Non-repeatable Read Example
-- Same query gives different result in same transaction

-- Transaction A
BEGIN TRANSACTION;
SELECT balance FROM accounts WHERE account_id = 1; -- Reads 300

-- Transaction B
BEGIN TRANSACTION;
UPDATE accounts SET balance = 500 WHERE account_id = 1;
COMMIT;

-- Transaction A
SELECT balance FROM accounts WHERE account_id = 1; -- Now reads 500 (data changed)

-- 4. Phantom Read Example
-- Same query returns different rows due to another insert

-- Transaction A
BEGIN TRANSACTION;
SELECT * FROM orders WHERE amount > 500; -- Returns 5 rows

-- Transaction B
BEGIN TRANSACTION;
INSERT INTO orders (order_id, amount) VALUES (1001, 600);
COMMIT;

-- Transaction A
SELECT * FROM orders WHERE amount > 500; -- Now returns 6 rows (phantom row)

-- Clean up transaction A
COMMIT;
