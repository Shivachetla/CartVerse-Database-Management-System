# 🛒 CartVerse - E-Commerce Database Management System

A comprehensive **MySQL Database Management System** that simulates the backend of a modern e-commerce platform. This project demonstrates database design, SQL programming, and advanced MySQL concepts used in real-world applications.

---

## 📌 Project Overview

CartVerse is designed to manage the core operations of an online shopping platform, including:

- User Management
- Product Catalog
- Category Management
- Shopping Cart
- Order Processing
- Payment Management
- Product Reviews

The project showcases both fundamental and advanced SQL concepts while following good database design practices.

---

## 🚀 Technologies Used

- MySQL 8.x
- MySQL Workbench
- SQL

---

## 📂 Project Structure

```
CartVerse/
│
├── 01_Create_Database.sql
├── 02_Create_Tables.sql
├── 03_Insert_Sample_Data.sql
├── 04_Queries.sql
├── 05_Views.sql
├── 06_Stored_Procedures.sql
├── 07_Triggers.sql
├── 08_Indexes.sql
├── README.md
└── ER_Diagram.png
```

---

## 🗄 Database Tables

| Table | Description |
|--------|-------------|
| Users | Stores customer information |
| Categories | Product categories |
| Products | Product details |
| Cart | Customer shopping cart |
| Orders | Customer orders |
| Order_Items | Products included in each order |
| Payments | Payment information |
| Reviews | Customer product reviews |

---

## ✨ Features

- User Management
- Product Management
- Shopping Cart Management
- Order Management
- Payment Tracking
- Customer Reviews
- SQL Views
- Stored Procedures
- Database Triggers
- Performance Optimization using Indexes

---

## 📚 SQL Concepts Demonstrated

- CREATE DATABASE
- CREATE TABLE
- INSERT
- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- Aggregate Functions
- INNER JOIN
- LEFT JOIN
- Views
- Stored Procedures
- Triggers
- Indexes

---

## 📊 Database Workflow

```
Users
   │
   ▼
Cart ─────────► Orders ─────────► Payments
   │                │
   │                ▼
   └────────► Order_Items ◄──────── Products
                                   │
                                   ▼
                              Categories

Users ─────────► Reviews ◄──────── Products
```

---

## 📈 Learning Outcomes

This project helped me gain practical experience in:

- Relational Database Design
- SQL Query Writing
- Data Manipulation
- Database Optimization
- Business Logic using Stored Procedures
- Data Validation using Triggers
- Performance Tuning using Indexes

---

## 🔮 Future Improvements

- Java/Python Backend Integration
- REST API Development
- Admin Dashboard
- Customer Dashboard
- Authentication System
- Inventory Analytics
- Sales Reports

---

## 👨‍💻 Author

**Chetla Shiva**

Software Developer | Python | SQL | AI Enthusiast

GitHub: *(Add your GitHub profile link here)*

LinkedIn: *(Add your LinkedIn profile link here)*

---

## ⭐ If you found this project useful, consider giving it a star on GitHub!