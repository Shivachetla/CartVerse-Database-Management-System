USE CartVerse;

-- ==========================================
-- BASIC SQL QUERIES
-- ==========================================

-- 1. Display all users
SELECT * FROM Users;

-- 2. Display all products
SELECT * FROM Products;

-- 3. Display all categories
SELECT * FROM Categories;

-- 4. Display all orders
SELECT * FROM Orders;

-- 5. Show products with price greater than ₹1000
SELECT product_name, price
FROM Products
WHERE price > 1000;

-- 6. Show users from Hyderabad
SELECT first_name, last_name, city
FROM Users
WHERE city = 'Hyderabad';

-- 7. Show products sorted by price (Highest to Lowest)
SELECT product_name, price
FROM Products
ORDER BY price DESC;

-- 8. Show the Top 5 most expensive products
SELECT product_name, price
FROM Products
ORDER BY price DESC
LIMIT 5;

-- 9. Count total users
SELECT COUNT(*) AS Total_Users
FROM Users;

-- 10. Count total products
SELECT COUNT(*) AS Total_Products
FROM Products;
-- ==========================================
-- JOIN QUERIES
-- ==========================================

-- 11. Show product names with their category names
SELECT
    p.product_name,
    c.category_name
FROM Products p
JOIN Categories c
ON p.category_id = c.category_id;

-- 12. Show user names with their orders
SELECT
    u.first_name,
    u.last_name,
    o.order_id,
    o.total_amount,
    o.order_status
FROM Users u
JOIN Orders o
ON u.user_id = o.user_id;

-- 13. Show products purchased in each order
SELECT
    o.order_id,
    p.product_name,
    oi.quantity,
    oi.price
FROM Order_Items oi
JOIN Orders o
ON oi.order_id = o.order_id
JOIN Products p
ON oi.product_id = p.product_id;

-- 14. Show payment details for each order
SELECT
    o.order_id,
    p.payment_method,
    p.payment_status
FROM Payments p
JOIN Orders o
ON p.order_id = o.order_id;

-- 15. Show user reviews with product names
SELECT
    u.first_name,
    p.product_name,
    r.rating,
    r.review
FROM Reviews r
JOIN Users u
ON r.user_id = u.user_id
JOIN Products p
ON r.product_id = p.product_id;