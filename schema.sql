-- This is a project about e-commerce side,where i use different section like,
/*
1.user table
2.categories table
3.products table
4.order table
5.order items table

*/

--create database
CREATE DATABASE IF NOT EXISTS EcommerceBD;
USE EcommerceBD;

-- create user table
CREATE TABLE users(
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--Create categories table
CREATE TABLE categories(
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

--Create products table
CREATE TABLE products(
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT DEFAULT 0,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id) ON DELETE SET NULL
);

--Create Orders Table
CREATE TABLE orders(
order_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
total_amount DECIMAL(10,2) NOT NULL,
status VARCHAR(20) DEFAULT 'Panding',
FOREIGN KEY(user_id) REFERENCES users(user_id) ON DELETE CASCADE

);

--Create order items table
CREATE TABLE order_items(
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    Foreign Key (order_id) REFERENCES orders(order_id) ON DELETE CASCADE,
    Foreign Key (product_id) REFERENCES products(product_id) ON DELETE CASCADE
);