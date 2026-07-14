USE CartVerse;

-- Delete procedures if they already exist
DROP PROCEDURE IF EXISTS GetAllProducts;
DROP PROCEDURE IF EXISTS GetProductsByCategory;
DROP PROCEDURE IF EXISTS GetOrdersByUser;
DROP PROCEDURE IF EXISTS GetTotalProducts;
DROP PROCEDURE IF EXISTS SearchProduct;

DELIMITER $$

-- ==========================================
-- Procedure 1 : Display All Products
-- ==========================================
CREATE PROCEDURE GetAllProducts()
BEGIN
    SELECT *
    FROM Products;
END $$

-- ==========================================
-- Procedure 2 : Display Products By Category
-- Example:
-- CALL GetProductsByCategory('Electronics');
-- ==========================================
CREATE PROCEDURE GetProductsByCategory(IN p_category VARCHAR(100))
BEGIN
    SELECT
        p.product_id,
        p.product_name,
        c.category_name,
        p.price,
        p.stock,
        p.brand
    FROM Products p
    INNER JOIN Categories c
        ON p.category_id = c.category_id
    WHERE c.category_name = p_category;
END $$

-- ==========================================
-- Procedure 3 : Display Orders of a User
-- Example:
-- CALL GetOrdersByUser(1);
-- ==========================================
CREATE PROCEDURE GetOrdersByUser(IN p_user_id INT)
BEGIN
    SELECT
        order_id,
        order_date,
        total_amount,
        order_status
    FROM Orders
    WHERE user_id = p_user_id;
END $$

-- ==========================================
-- Procedure 4 : Count Total Products
-- Example:
-- CALL GetTotalProducts();
-- ==========================================
CREATE PROCEDURE GetTotalProducts()
BEGIN
    SELECT COUNT(*) AS Total_Products
    FROM Products;
END $$

-- ==========================================
-- Procedure 5 : Search Product
-- Example:
-- CALL SearchProduct('iPhone');
-- CALL SearchProduct('Laptop');
-- CALL SearchProduct('Galaxy');
-- ==========================================
CREATE PROCEDURE SearchProduct(IN p_keyword VARCHAR(100))
BEGIN
    SELECT
        product_id,
        product_name,
        category_id,
        price,
        stock,
        brand
    FROM Products
    WHERE product_name LIKE CONCAT('%', p_keyword, '%');
END $$

DELIMITER ;