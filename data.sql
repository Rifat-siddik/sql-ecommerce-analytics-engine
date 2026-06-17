
USE EcommerceBD;

--1. Insert categories
INSERT INTO categories(category_name)VALUES
('Electronics'),
('Clothing'),
('Home & Kitchen'),
('Books');


--2. Insert User
INSERT INTO users(first_name,last_name,email)VALUES
('Abubakkar', 'Rifat', 'rifat@email.com'),
('Siddik', 'Rahman', 'siddik@email.com'),
('Anika', 'Tahsin', 'anika@email.com'),
('Arif', 'Hasan', 'arif@email.com'),
('Tanvir', 'Ahmed', 'tanvir@email.com');

--3.insert products 
INSERT INTO products(product_name,price,stock_quantity,category_id)VALUES
('Smartphone x1', 699.99, 15, 1),
('Wireless Headphones', 89.99, 30, 1),
('Slim Fit Jeans', 39.99, 50, 2),
('Cotton T-Shirt', 19.99, 100, 2),
('Blender Mixer', 49.99, 12, 3),
('SQL Performance Tuning Book', 29.99, 25, 4);

--Insert Orders
INSERT INTO orders (user_id, total_amount, status) VALUES
(1, 789.98, 'Delivered'),  -- Rifat bought Smartphone & Headphones
(2, 39.99, 'Shipped'),     -- Siddik bought Jeans
(3, 69.98, 'Pending'),     -- Anika bought T-Shirt & Blender
(1, 29.99, 'Delivered'),  -- Rifat bought a Book later
(4, 139.98, 'Delivered');  -- Arif bought Headphones and Blender

-- 5. Insert Order Items (Linking Orders and Products)
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES 
(1, 1, 1, 699.99), -- Order 1: 1 Smartphone
(1, 2, 1, 89.99),  -- Order 1: 1 Headphone
(2, 3, 1, 39.99),  -- Order 2: 1 Jeans
(3, 4, 1, 19.99),  -- Order 3: 1 T-Shirt
(3, 5, 1, 49.99),  -- Order 3: 1 Blender
(4, 6, 1, 29.99),  -- Order 4: 1 Book
(5, 2, 1, 89.99),  -- Order 5: 1 Headphone
(5, 5, 1, 49.99);  -- Order 5: 1 Blender