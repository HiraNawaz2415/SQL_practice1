# **Transaction**
- A transaction is a group of SQL commands that run together as one unit.

- 1.Either all succeed (✔️) — using COMMIT

- 2.Or all are undone (❌) — using ROLLBACK

---

- Think of it like online shopping:

- You add items, give address, and pay.
- If payment fails — the whole order is canceled.
- That’s a transaction!

---
# **What is ACID in Database?**
- ACID is a set of four rules that ensure your database transactions are safe, reliable, and accurate.
- The word ACID stands for:
  
| Letter | Stands For  | Meaning                              |
| ------ | ----------- | ------------------------------------ |
| A      | Atomicity   | All or nothing                       |
| C      | Consistency | Keeps data valid                     |
| I      | Isolation   | Transactions don’t affect each other |
| D      | Durability  | Data stays saved                     |

---

## **A – Atomicity**
- All steps must succeed or none at all.

- **Example:** In money transfer, if deducting from one account succeeds but adding to another fails, the entire operation is rolled back.
---
## **C – Consistency**
- Database stays in a valid state before and after the transaction.

- **Example:** If a rule says "balance can't be negative," then even after a transaction, that rule must still be true.

## **I – Isolation**
- Each transaction runs independently — as if it's the only one running.

- **Example:** Two people transferring money at the same time won’t mix up the data. Each transfer completes safely.
---
## **D – Durability**
- Once the transaction is done, the data is saved — even if the system crashes.

- **Example:** You complete a transaction, and the power goes out. When the system restarts, your data is still there.
---
# **Concurrency**
- means multiple users or processes accessing the database at the same time.
---
## **What is Concurrency Control?**
- Concurrency Control is a method used in databases to make sure that multiple users can access and modify data at the same time safely — without causing mistakes, confusion, or loss of data.
---
## **Why is it needed?**
- Imagine two people trying to update the same student record in your database at the same time. Without proper control, one person's update might overwrite the other person's work. This is called a conflict.

- **Concurrency Control prevents:**

- Lost updates

- Inconsistent data

- Dirty reads (reading uncommitted changes)

- Phantom reads (rows appearing/disappearing during a transaction)

---
## **How it works:**
- It uses rules and techniques to manage multiple users working at once. It decides:

     - Who can read or write data

     - When they can do it

     - What happens if two users want to change the same thing

---

## **Real-life Example:**
- Suppose you're editing a student record, and your friend tries to update it at the same time.

- Without concurrency control:
     - Their update might erase yours or show incorrect data.

- With concurrency control:
    - The system ensures one of you finishes first or merges changes safely.
---
# **Problems That Can Happen During Concurrency**
## **1. Lost Update**
- Two users read the same data and update it. One update gets lost.

**Example:**

- User A reads balance = 100

- User B reads balance = 100

- A updates balance to 150 → ✅

- B updates balance to 130 → ❌ A's update is lost!

## **2. Dirty Read**
- One user reads uncommitted (temporary) changes made by another.

**Example:**

- User A updates balance to 200 but hasn’t committed yet.

- User B reads the new balance = 200.

- A rolls back → B read incorrect data.

## **3. Non-repeatable Read**
- A user reads the same row twice and gets different data because another user updated it between reads.

**Example:**

- User A reads balance = 300.

- User B updates it to 500 and commits.

- A reads again → sees 500 now → not repeatable!

## **4. Phantom Read**
- A user runs the same query twice and gets different rows because another user added/deleted rows in between.

**Example:**

- A runs SELECT * FROM orders WHERE amount > 500 → gets 5 rows.

- B adds a new matching order.

- A runs the same query again → gets 6 rows now.

## How to Prevent These?

| Technique               | What it does (in easy words)                               |
| ----------------------- | ---------------------------------------------------------- |
| **Locks**               | Stops others from accessing data while someone is using it |
| **Timestamps**          | Orders transactions by time to avoid conflicts             |
| **Optimistic Control**  | Assumes no conflict, checks for issues before saving       |
| **Pessimistic Control** | Assumes conflict, locks data from the start                |

---
