USE CartVerse;

-- ==========================================
-- Project : CartVerse
-- File    : 08_Indexes.sql
-- ==========================================

-- Create Index on Users email
CREATE INDEX idx_user_email
ON Users(email);

-- Create Index on Product Name
CREATE INDEX idx_product_name
ON Products(product_name);

-- Create Index on Product Category
CREATE INDEX idx_product_category
ON Products(category_id);

-- Create Index on Orders User ID
CREATE INDEX idx_order_user
ON Orders(user_id);

-- Create Index on Payments Order ID
CREATE INDEX idx_payment_order
ON Payments(order_id);

-- ==========================================
-- Verify Indexes
-- ==========================================

SHOW INDEX FROM Users;
SHOW INDEX FROM Products;
SHOW INDEX FROM Orders;
SHOW INDEX FROM Payments;