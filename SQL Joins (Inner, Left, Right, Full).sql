-- =========================================
-- TASK 5: SQL Joins (Inner, Left, Right, Full)
-- =========================================
USE ecommerce_db;

-- 1. INNER JOIN: Show customers who have placed orders
SELECT 
    c.Customer_ID,
    c.Name AS Customer_Name,
    o.Order_ID,
    o.Order_Date
FROM Customer c
INNER JOIN Orders o ON c.Customer_ID = o.Customer_ID;

-- 2. LEFT JOIN: Show all customers and their orders (including those without any orders)
SELECT 
    c.Customer_ID,
    c.Name AS Customer_Name,
    o.Order_ID,
    o.Order_Date
FROM Customer c
LEFT JOIN Orders o ON c.Customer_ID = o.Customer_ID;

-- 3. RIGHT JOIN: Show all orders and their customers (including orders without a matching customer)
SELECT 
    c.Customer_ID,
    c.Name AS Customer_Name,
    o.Order_ID,
    o.Order_Date
FROM Customer c
RIGHT JOIN Orders o ON c.Customer_ID = o.Customer_ID;

-- 4. FULL OUTER JOIN: Show all customers and orders (match if possible, else show NULLs)
-- MySQL doesn’t directly support FULL JOIN or FULL OUTER JOIN. We need to use Union of LEFT JOIN + RIGHT JOIN:
SELECT 
    c.Customer_ID,
    c.Name AS Customer_Name,
    o.Order_ID,
    o.Order_Date
FROM Customer c
LEFT JOIN Orders o ON c.Customer_ID = o.Customer_ID
UNION
SELECT 
    c.Customer_ID,
    c.Name AS Customer_Name,
    o.Order_ID,
    o.Order_Date
FROM Customer c
RIGHT JOIN Orders o ON c.Customer_ID = o.Customer_ID;

-- 5. INNER JOIN with 3 tables: Show each order with its customer and payment details
SELECT 
    c.Name AS Customer_Name,
    o.Order_ID,
    p.Payment_ID,
    p.Payment_Date,
    p.Amount
FROM Customer c
INNER JOIN Orders o ON c.Customer_ID = o.Customer_ID
INNER JOIN Payment p ON o.Order_ID = p.Order_ID;

-- 6. CROSS JOIN: Combine each product with each customer (cartesian product)
SELECT 
    c.Name AS Customer_Name,
    p.Name AS Product_Name
FROM Customer c
CROSS JOIN Product p;

-- 7. SELF JOIN example: Find customers with same address
SELECT 
    A.Name AS Customer1,
    B.Name AS Customer2,
    A.Address
FROM Customer A
INNER JOIN Customer B
ON A.Address = B.Address AND A.Customer_ID <> B.Customer_ID;
