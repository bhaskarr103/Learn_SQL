USE learnSQL;


-- EMPLOYEE TABLE
CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(255),
    salary DECIMAL(10, 2),
    years_of_service INT
);

-- Insert values
INSERT INTO employee VALUES (1, 'John Doe', 50000, 5);
INSERT INTO employee VALUES (2, 'Jane Smith', 60000, 3);


-- PRODUCTS TABLE
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(100),
    price DECIMAL(10, 2)
);

-- Insert values
INSERT INTO products VALUES (1, 'Laptop', 'Electronics', 800);
INSERT INTO products VALUES (2, 'Headphones', 'Electronics', 50);


-- CUSTOMERS TABLE
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255),
    email VARCHAR(255),
    total_purchases DECIMAL(10, 2)
);

-- Insert values
INSERT INTO customers VALUES (1, 'Alice Johnson', 'alice@example.com', 1200);
INSERT INTO customers VALUES (2, 'Bob Wilson', NULL, 800);



-- ORDERS TABLE
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_amount DECIMAL(10, 2),
    shipping_date DATE
);

-- Insert values
INSERT INTO orders VALUES (1, 1500, NULL);
INSERT INTO orders VALUES (2, 800, '2023-01-10');



----------------------------------------------------------------------------------
----------------------------------------------------------------------------------


-- Equal to (=):
-- Retrieve all employees with a salary of 50000.

SELECT * FROM employees WHERE salary = 50000;

-- Not equal to (<> or !=):
-- Retrieve products that are not in the 'Electronics' category.

SELECT * FROM products WHERE category <> 'Electronics';


-- Greater than (>):
-- Retrieve orders with an order amount greater than 1000.

SELECT * FROM orders WHERE order_amount > 1000;


-- Greater than or equal to (>=):
-- Retrieve employees with 5 or more years of service.

SELECT * FROM employees WHERE years_of_service >= 5;


-- IS NULL:
-- Retrieve orders with a null shipping date.

SELECT * FROM orders WHERE shipping_date IS NULL;

-- IS NOT NULL:
-- Retrieve customers with a non-null email.

SELECT * FROM customers WHERE email IS NOT NULL;






