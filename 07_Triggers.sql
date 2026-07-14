USE CartVerse;

-- ==========================================
-- Project : CartVerse
-- File    : 07_Triggers.sql
-- ==========================================

-- Delete triggers if they already exist
DROP TRIGGER IF EXISTS ReduceStockAfterOrder;
DROP TRIGGER IF EXISTS CheckReviewRating;
DROP TRIGGER IF EXISTS UpdateOrderStatusAfterPayment;

DELIMITER $$

-- ==========================================
-- Trigger 1: Reduce product stock
-- Runs after a new order item is inserted
-- ==========================================
CREATE TRIGGER ReduceStockAfterOrder
AFTER INSERT ON Order_Items
FOR EACH ROW
BEGIN
    UPDATE Products
    SET stock = stock - NEW.quantity
    WHERE product_id = NEW.product_id;
END $$

-- ==========================================
-- Trigger 2: Validate review rating
-- Rating must be between 1 and 5
-- ==========================================
CREATE TRIGGER CheckReviewRating
BEFORE INSERT ON Reviews
FOR EACH ROW
BEGIN
    IF NEW.rating < 1 OR NEW.rating > 5 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Rating must be between 1 and 5';
    END IF;
END $$

-- ==========================================
-- Trigger 3: Update order status after payment
-- If payment is marked as Paid,
-- order status becomes Completed
-- ==========================================
CREATE TRIGGER UpdateOrderStatusAfterPayment
AFTER INSERT ON Payments
FOR EACH ROW
BEGIN
    IF NEW.payment_status = 'Paid' THEN
        UPDATE Orders
        SET order_status = 'Completed'
        WHERE order_id = NEW.order_id;
    END IF;
END $$

DELIMITER ;