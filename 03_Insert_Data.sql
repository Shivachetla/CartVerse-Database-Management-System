-- ==========================================
-- Project : CartVerse Database
-- File    : 03_Insert_Sample_Data.sql
-- Author  : Chetla Shiva
-- ==========================================

USE CartVerse;

-- ==========================================
-- Insert Categories
-- ==========================================

INSERT INTO Categories (category_name, description) VALUES
('Electronics','Electronic gadgets'),
('Fashion','Clothing and accessories'),
('Books','Books and novels'),
('Home & Kitchen','Home appliances'),
('Sports','Sports equipment'),
('Beauty','Beauty products'),
('Toys','Kids toys'),
('Groceries','Daily essentials');

-- ==========================================
-- Insert Users
-- ==========================================

INSERT INTO Users
(first_name,last_name,email,phone,password,address,city,state,pincode)
VALUES
('Rahul','Sharma','rahul@gmail.com','9876543210','rahul123','Ameerpet','Hyderabad','Telangana','500001'),
('Priya','Reddy','priya@gmail.com','9876543211','priya123','Madhapur','Hyderabad','Telangana','500081'),
('Arjun','Kumar','arjun@gmail.com','9876543212','arjun123','Vijayawada','Vijayawada','Andhra Pradesh','520001'),
('Sneha','Patel','sneha@gmail.com','9876543213','sneha123','Banjara Hills','Hyderabad','Telangana','500034'),
('Rohit','Verma','rohit@gmail.com','9876543214','rohit123','Gachibowli','Hyderabad','Telangana','500032');

-- ==========================================
-- Insert Products
-- ==========================================

INSERT INTO Products
(category_id,product_name,description,price,stock,brand)
VALUES
(1,'iPhone 15','Apple Smartphone',79999,15,'Apple'),
(1,'Samsung Galaxy S24','Android Smartphone',74999,20,'Samsung'),
(1,'Dell Inspiron Laptop','15-inch Laptop',65000,10,'Dell'),
(2,'Nike Running Shoes','Comfortable running shoes',4500,50,'Nike'),
(2,'Levis Jeans','Blue Denim Jeans',2200,80,'Levis'),
(3,'Atomic Habits','Self-help Book',550,100,'Penguin'),
(4,'Prestige Pressure Cooker','5L Cooker',2800,35,'Prestige'),
(5,'Cricket Bat','English Willow Bat',3500,25,'SG'),
(6,'Face Wash','Daily Face Wash',250,100,'Nivea'),
(7,'Remote Control Car','Kids Toy Car',1200,40,'FunToy');

-- ==========================================
-- Insert Cart
-- ==========================================

INSERT INTO Cart
(user_id,product_id,quantity)
VALUES
(1,1,1),
(2,4,2),
(3,6,1),
(4,9,3),
(5,8,1);

-- ==========================================
-- Insert Orders
-- ==========================================

INSERT INTO Orders
(user_id,total_amount,order_status)
VALUES
(1,79999,'Delivered'),
(2,9000,'Delivered'),
(3,550,'Pending'),
(4,750,'Shipped'),
(5,3500,'Delivered');

-- ==========================================
-- Insert Order Items
-- ==========================================

INSERT INTO Order_Items
(order_id,product_id,quantity,price)
VALUES
(1,1,1,79999),
(2,4,2,4500),
(3,6,1,550),
(4,9,3,250),
(5,8,1,3500);

-- ==========================================
-- Insert Payments
-- ==========================================

INSERT INTO Payments
(order_id,payment_method,payment_status)
VALUES
(1,'Credit Card','Paid'),
(2,'UPI','Paid'),
(3,'Cash on Delivery','Pending'),
(4,'Debit Card','Paid'),
(5,'Net Banking','Paid');

-- ==========================================
-- Insert Reviews
-- ==========================================

INSERT INTO Reviews
(user_id,product_id,rating,review)
VALUES
(1,1,5,'Excellent phone'),
(2,4,4,'Very comfortable'),
(3,6,5,'Must read book'),
(4,9,4,'Good product'),
(5,8,5,'Excellent quality');

-- ==========================================
-- Verify Data
-- ==========================================

SELECT COUNT(*) AS Categories FROM Categories;
SELECT COUNT(*) AS Users FROM Users;
SELECT COUNT(*) AS Products FROM Products;
SELECT COUNT(*) AS Cart FROM Cart;
SELECT COUNT(*) AS Orders FROM Orders;
SELECT COUNT(*) AS Order_Items FROM Order_Items;
SELECT COUNT(*) AS Payments FROM Payments;
SELECT COUNT(*) AS Reviews FROM Reviews;
