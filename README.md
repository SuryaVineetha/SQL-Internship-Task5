# 🧩 Task 5 – SQL Joins (INNER, LEFT, RIGHT, FULL)

### 🎯 Objective
The goal of this task is to understand and apply different types of SQL JOIN operations to combine data from multiple related tables in a database.

---

### 🧠 Key Concepts
- INNER JOIN  
- LEFT JOIN  
- RIGHT JOIN  
- FULL OUTER JOIN (using UNION in MySQL)  
- CROSS JOIN  
- SELF JOIN  
- Multi-table JOIN (joining three tables together)

---

### 🗄️ Database Used
**Database Name:** `ecommerce_db`

This database includes the following tables:
- **Customer**
- **Orders**
- **Product**
- **Payment**

These tables are related using primary and foreign keys.

---

### 💡 What Was Done

1. **INNER JOIN:**  
   Displayed customers who have placed at least one order.

2. **LEFT JOIN:**  
   Displayed all customers and their orders, including those who haven’t placed any orders yet.

3. **RIGHT JOIN:**  
   Displayed all orders along with their customers, including orders without a matching customer.

4. **FULL OUTER JOIN:**  
   Displayed all customers and all orders together, showing NULL values where there is no match.  
   *(Since MySQL doesn’t directly support FULL JOIN, a UNION of LEFT and RIGHT JOIN was used.)*

5. **Multi-table JOIN:**  
   Combined three tables — Customer, Orders, and Payment — to show complete order and payment details for each customer.

6. **CROSS JOIN:**  
   Displayed a cartesian product showing every possible combination of customers and products.

7. **SELF JOIN:**  
   Compared the Customer table with itself to find customers living at the same address.
