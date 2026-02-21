-- Customers values
INSERT INTO
    customers
VALUES
    (1, "Amit Sharma", "Pune"),
    (2, "Neha Sharma", "Mumbai"),
    (3, "Rahul Patil", "Karnataka"),
    (4, "Nandini Patil", "Delhi"),
    (5, "Abhijit Deshmukh", "Maharashtra")
    -- Products Values
INSERT INTO
    products
VALUES
    (101, 'Laptop', 'Electronics'),
    (102, 'Mobile', 'Electronics'),
    (103, 'Headphones', 'Accessories'),
    (104, 'Shoes', 'Fashion'),
    (105, 'Watch', 'Fashion');

-- Orders Values
INSERT INTO
    orders
VALUES
    (1001, 1, 101, '2024-01-10', 1, 60000),
    (1002, 2, 102, '2024-01-15', 2, 20000),
    (1003, 3, 103, '2024-02-01', 3, 3000),
    (1004, 1, 104, '2024-02-10', 1, 2500),
    (1005, 4, 101, '2024-03-05', 1, 62000),
    (1006, 5, 105, '2024-03-12', 2, 5000),
    (1007, 2, 103, '2024-03-15', 1, 3000),
    (1008, 3, 102, '2024-04-01', 1, 21000);