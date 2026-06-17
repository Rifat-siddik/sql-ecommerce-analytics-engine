# E-Commerce Database Design & Business Analytics Engine

A relational database architecture developed for an e-commerce platform using **MySQL**. This project focuses on structured schema design, establishing referential integrity via explicit foreign keys, and implementing data analytics queries to extract core business intelligence (BI) metrics from transactional records.

---

## 📐 Database Architecture (ER Diagram)

Below is the conceptual blueprint of the database. It handles customers, product cataloging, and transaction breakdowns.

*(You can export your diagram from dbdiagram.io as a PNG, save it in this folder, and link it here)*
![ER Diagram Placeholder](https://via.placeholder.com/800x400.png?text=E-Commerce+Schema+ER+Diagram)

### Core Schema Design:
1. **`users`**: Stores user registration info (first name, last name, unique email, and account creation timestamp).
2. **`categories`**: Product taxonomy lookup table (e.g., Electronics, Clothing).
3. **`products`**: Maintains inventory items, dynamic unit pricing, stock levels, and category assignments.
4. **`orders`**: Transaction ledger capturing the order timestamp, total billing amount, and order fulfillments states.
5. **`order_items`**: A bridge table resolving the Many-to-Many relationship between orders and products, logging exact price snapshots and item quantities per transaction.

---

## 🚀 Getting Started (How to Run)

### Prerequisites
* MySQL Server & MySQL Workbench installed locally.

### Execution Steps in MySQL Workbench:
1. Create a project folder on your system and save the three core files: `schema.sql`, `data.sql`, and `analytics_queries.sql`.
2. Open **MySQL Workbench** and connect to your local connection.
3. Open a new Query Tab, copy the entire code from **`schema.sql`** and execute it (`Ctrl + Shift + Enter`) to construct the `EcommerceBD` database and its 5 dependent tables.
4. Open another Query Tab, run the contents of **`data.sql`** to populate the tables with baseline transactional entries.
5. Execute queries from **`analytics_queries.sql`** to evaluate business metrics directly within the Result Grid.

---

## 📊 Business Analytics Queries Implemented

The analytical core of this project transforms raw tables into structured reports to answer real-world business performance questions:

### 1. Top Selling Products
* **Business Problem:** Identifying inventory items with the highest turnover to manage stock efficiently and avoid shortages.
* **Implementation:** Combines `order_items` and `products` using an explicit `JOIN`, aggregates sales via `SUM(quantity)`, and groups logs by product criteria ordered from highest to lowest velocity.

### 2. Customer Lifetime Value (CLV Tracking)
* **Business Problem:** Aggregating total consumer spending to identify high-value clients for targeted retention marketing.
* **Implementation:** Joins `users` and `orders`, aggregates operational invoice footprints via `SUM(total_amount)`, and returns a ranked leaderboard of spending distributions.

### 3. User Retention & Churn Control (Inactive Profiles)
* **Business Problem:** Extracting a mailing list of registered users who have never placed a single order to trigger initial promotional coupon drops.
* **Implementation:** Evaluates structural mismatches using a strategic `LEFT JOIN` between `users` and `orders`, applying a `WHERE order_id IS NULL` filter to isolate inactive registrations.

---

## 🛠️ Core SQL Concepts Demonstrated
* **Database Definition Language (DDL):** Schema construction using `CREATE DATABASE` and `CREATE TABLE` structures.
* **Database Manipulation Language (DML):** Secure population constraints using `INSERT INTO` parameters.
* **Data Sifting & Structuring:** Implementing relational operators (`JOIN`, `LEFT JOIN`), filter mechanics (`WHERE`, `IS NULL`), grouping (`GROUP BY`), sorting workflows (`ORDER BY DESC`), and basic aggregation expressions (`SUM`).


## 👨‍💻 Author

**Rifat Siddik**
*Database Learning Project — 2026*

[![GitHub](https://img.shields.io/badge/GitHub-Follow-181717?style=for-the-badge&logo=github)](https://github.com/YOUR_USERNAME)

---

<div align="center">

**⭐ Star this repo if you found it useful!**

