CREATE DATABASE ecommerce;

USE ecommerce;

-- --Creating customer table 
CREATE TABLE
  customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(100)
  );

-- Product Table
CREATE TABLE
  products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
  );

-- --ORDER TABLE--
CREATE TABLE
  orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
    FOREIGN KEY (product_id) REFERENCES products (product_id)
  );