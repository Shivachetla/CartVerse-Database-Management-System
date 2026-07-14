USE CartVerse;

-- ==========================================
-- Project : CartVerse
-- File    : 05_Views.sql
-- ==========================================

-- ==========================================
-- View 1 : Product Details
-- ==========================================

CREATE VIEW Product_Details AS
SELECT
    p.product_id,
    p.product_name,
    c.category_name,
    p.price,
    p.stock,
    p.brand
FROM Products p
JOIN Categories c
ON p.category_id = c.category_id;

-- ==========================================
-- View 2 : Customer Orders
-- ==========================================

CREATE VIEW Customer_Orders AS
SELECT
    o.order_id,
    CONCAT(u.first_name,' ',u.last_name) AS customer_name,
    o.order_date,
    o.total_amount,
    o.order_status
FROM Orders o
JOIN Users u
ON o.user_id = u.user_id;

-- ==========================================
-- View 3 : Payment Details
-- ==========================================

CREATE VIEW Payment_Details AS
SELECT
    p.payment_id,
    o.order_id,
    p.payment_method,
    p.payment_status,
    p.payment_date
FROM Payments p
JOIN Orders o
ON p.order_id = o.order_id;

-- ==========================================
-- View 4 : Product Reviews
-- ==========================================

CREATE VIEW Product_Reviews AS
SELECT
    pr.product_name,
    CONCAT(u.first_name,' ',u.last_name) AS customer,
    r.rating,
    r.review
FROM Reviews r
JOIN Users u
ON r.user_id=u.user_id
JOIN Products pr
ON r.product_id=pr.product_id;

-- ==========================================
-- View 5 : Cart Details
-- ==========================================

CREATE VIEW Cart_Details AS
SELECT
    c.cart_id,
    CONCAT(u.first_name,' ',u.last_name) AS customer,
    p.product_name,
    c.quantity
FROM Cart c
JOIN Users u
ON c.user_id=u.user_id
JOIN Products p
ON c.product_id=p.product_id;

-- ==========================================
-- Verify Views
-- ==========================================

SHOW FULL TABLES
WHERE Table_type='VIEW';