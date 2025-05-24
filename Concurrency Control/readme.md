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
  
