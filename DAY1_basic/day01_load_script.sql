-- SQLCourse dataset: tiny online store
-- Works on PostgreSQL and SQLite. Safe to re-run: it rebuilds everything.

DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id  INTEGER PRIMARY KEY,
    name         VARCHAR(100) NOT NULL,
    email        VARCHAR(150),
    city         VARCHAR(50),
    signup_date  DATE
);

CREATE TABLE products (
    product_id  INTEGER PRIMARY KEY,
    name        VARCHAR(100) NOT NULL,
    category    VARCHAR(50),
    price       NUMERIC(10,2)
);

CREATE TABLE orders (
    order_id     INTEGER PRIMARY KEY,
    customer_id  INTEGER NOT NULL REFERENCES customers(customer_id),
    order_date   DATE,
    status       VARCHAR(20)
);

CREATE TABLE order_items (
    order_id    INTEGER NOT NULL REFERENCES orders(order_id),
    product_id  INTEGER NOT NULL REFERENCES products(product_id),
    quantity    INTEGER NOT NULL,
    unit_price  NUMERIC(10,2),
    PRIMARY KEY (order_id, product_id)
);

INSERT INTO customers (customer_id, name, email, city, signup_date) VALUES
(1, 'Aarav Sharma',   'aarav@example.com',  'Mumbai',    '2025-01-10'),
(2, 'Priya Singh',    'priya@example.com',  'Delhi',     '2025-01-22'),
(3, 'Rohan Mehta',    'rohan@example.com',  'Bengaluru', '2025-02-05'),
(4, 'Neha Gupta',     'neha@example.com',   'Delhi',     '2025-02-18'),
(5, 'Vikram Rao',     'vikram@example.com', 'Hyderabad', '2025-03-03'),
(6, 'Ananya Iyer',    'ananya@example.com', 'Chennai',   '2025-03-15'),
(7, 'Karan Malhotra', NULL,                 'Mumbai',    '2025-04-01'),
(8, 'Sara Khan',      'sara@example.com',   'Bengaluru', '2025-04-12');

INSERT INTO products (product_id, name, category, price) VALUES
(101, 'Wireless Mouse',      'Electronics', 799.00),
(102, 'Mechanical Keyboard', 'Electronics', 3499.00),
(103, 'USB-C Cable',         'Electronics', 299.00),
(104, 'Notebook A5',         'Stationery',  120.00),
(105, 'Gel Pen Pack',        'Stationery',  150.00),
(106, 'Water Bottle',        'Home',        450.00),
(107, 'Desk Lamp',           'Home',        1299.00),
(108, 'Backpack',            'Accessories', 1899.00);

INSERT INTO orders (order_id, customer_id, order_date, status) VALUES
(1001, 1, '2025-02-01', 'delivered'),
(1002, 2, '2025-02-10', 'delivered'),
(1003, 1, '2025-03-05', 'delivered'),
(1004, 3, '2025-03-12', 'shipped'),
(1005, 4, '2025-03-20', 'delivered'),
(1006, 5, '2025-04-02', 'cancelled'),
(1007, 2, '2025-04-15', 'shipped'),
(1008, 6, '2025-04-22', 'pending');

INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1001, 101, 1,  799.00),
(1001, 103, 2,  299.00),
(1002, 102, 1, 3499.00),
(1003, 104, 3,  120.00),
(1003, 105, 2,  150.00),
(1004, 107, 1, 1299.00),
(1005, 106, 1,  450.00),
(1005, 108, 1, 1899.00),
(1006, 103, 1,  299.00),
(1007, 105, 4,  150.00),
(1008, 101, 1,  799.00),
(1008, 104, 2,  120.00);
