# 🛒 Mini SQL Project: Online Store (Beginner Version)

## 🎯 Project Goal
Create a small database for an online store and write SQL queries to manage and analyze sales data.

---

## 🧱 1️⃣ Tables to Create

You will create two simple tables (no joins needed):

### **Table 1: products**
Stores details about items sold in the store.

| Column Name | Type | Description |
|--------------|------|-------------|
| product_id   | INT | Unique product ID |
| name         | VARCHAR(50) | Product name |
| category     | VARCHAR(30) | Product category (e.g., Electronics, Fashion) |
| price        | DECIMAL(10,2) | Price of one unit |

### **Table 2: sales**
Stores information about products sold each day.

| Column Name | Type | Description |
|--------------|------|-------------|
| sale_id      | INT | Unique sale ID |
| product_name | VARCHAR(50) | Product name (same as in products.name) |
| quantity     | INT | Number of units sold |
| sale_date    | DATE | Date of sale |

---

## 🪜 2️⃣ Tasks to Do

### **Step 1 — Create Tables**
Write CREATE TABLE statements for both tables.

### **Step 2 — Insert Sample Data**
Insert at least 8–10 products into the products table and 10–15 records into the sales table.

Make sure to include:
- Multiple categories (e.g., Electronics, Fashion, Grocery)
- Different sale dates
- Some products sold multiple times

#### Example (for understanding only — you should create your own data):
**products**
| product_id | name       | category     | price |
|-------------|-------------|--------------|--------|
| 1 | Laptop | Electronics | 60000 |
| 2 | Shoes | Fashion | 2500 |
| 3 | T-Shirt | Fashion | 800 |

**sales**
| sale_id | product_name | quantity | sale_date |
|----------|---------------|-----------|------------|
| 1 | Laptop | 2 | 2025-11-01 |
| 2 | Shoes | 3 | 2025-11-01 |
| 3 | T-Shirt | 5 | 2025-11-02 |

---

## 🧩 3️⃣ Queries to Practice

Write and test these queries one by one:

### **Basic CRUD**
- Show all products
- Show all sales records
- Insert a new product
- Update the price of a product
- Delete a product from the list

### **Filtering**
- Show all products with price > 2000
- Show all sales made after a specific date
- Show all sales where quantity > 3

### **Aggregation (GROUP BY & COUNT, SUM, AVG, HAVING)**
- Find total quantity sold for each product
- Find total sales amount (price × quantity) for each product
- Find total quantity sold per category
- Find average product price per category
- Find products with total quantity sold greater than 5 (HAVING)

### **Sorting**
- Show top 3 most expensive products
- Show sales sorted by date (latest first)

### **Bonus**
- Find the product that was sold the most (highest total quantity)
- Find the category that earned the most total revenue
