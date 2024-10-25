Create  database  `sales_data`;
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    category VARCHAR(100),
    price DECIMAL(10, 2)
);
SELECT * FROM products;

CREATE TABLE customers (
    customer_id INT ,
    first_name VARCHAR(50) ,
    last_name VARCHAR(50) ,
    email VARCHAR(100) ,
    phone_number VARCHAR(15)
);
SELECT*FROM customers;
CREATE TABLE sales (
    sale_id INT ,
    product_id INT,
    customer_id INT ,
    sale_date DATE ,
    quantity INT ,
    total_amount DECIMAL(10, 2) 
);
SELECT*FROM sales;

CREATE TABLE payments (
    payment_id INT ,
    sale_id INT ,
    payment_method VARCHAR(50) ,
    payment_date DATE ,
    amount_paid DECIMAL(10, 2) 
);
SELECT*FROM payments;

INSERT INTO products (product_id, product_name, category, price) VALUES
(1, 'Laptop', 'Electronics', 1200.00),
(2, 'Smartphone', 'Electronics', 800.00),
(3, 'Television', 'Electronics', 150.00),
(4, 'Bluetooth Speaker', 'Electronics', 60.00),
(5, 'Running Shoes', 'Footwear', 100.00),
(6, 'Wristwatch', 'Accessories', 75.00),
(7, 'Backpack', 'Bags', 45.00),
(8, 'Electric Kettle', 'Kitchen Appliances', 30.00),
(9, 'Desk Lamp', 'Lighting', 20.00),
(10, 'Wardrobe', 'Furniture', 50.00);
SELECT* FROM products;

INSERT INTO customers (customer_id, first_name, last_name, email, phone_number) VALUES
(1, 'taiwo', 'grace',  'taiwo.grace@gmail.com', '07039277180'),
(2, 'Jane', 'Smith',  'jane.smith@gmail.com', '08032257185'),
(3, 'Michael', 'Johnson',  'michael.johnson@gmail.com', '08032257185'),
(4, 'okiki', 'john',  'okiki.john@example.com', '08135508998'),
(5, 'David', 'dada',  'david.dada@example.com', '07098767898'),
(6, 'Emma', 'lawal',  'emma.garcia@example.com', '09165789067'),
(7, 'James', 'Anderson',  'james.anderson@example.com', '09087965784'),
(8, 'Olivia', 'Thomas', 'olivia.thomas@example.com', '07098764534'),
(9, 'William', 'Taylor',  'william.taylor@example.com', '09089123456'),
(10, 'Sophia', 'Moore',  'sophia.moore@example.com', '08056432785'),
(11, 'Benjamin', 'Harris',  'benjamin.harris@example.com', '09083245671'),
(12, 'Isabella', 'Clark',  'isabella.clark@example.com', '07084321678'),
(13, 'Alexander', 'Lewis',  'alexander.lewis@example.com', '09087123678'),
(14, 'Mia', 'Walker',  'mia.walker@example.com', '09081245789'),
(15, 'Daniel', 'Hall',  'daniel.hall@example.com', '08122345678'),
(16, 'Ava', 'Allen',  'ava.allen@example.com', '08134556783'),
(17, 'Matthew', 'Young',  'matthew.young@example.com', '09087326748'),
(18, 'Abigail', 'Hernandez',  'abigail.hernandez@example.com', '07098213567'),
(19, 'Joseph', 'King',  'joseph.king@example.com', '09089722144'),
(20, 'Charlotte', 'Wright',  'charlotte.wright@example.com', '09178436732'),
(21, 'Samuel', 'Lopez',  'samuel.lopez@example.com', '09012345890'),
(22, 'Grace', 'Hill',  'grace.hill@example.com', '08133466755'),
(23, 'Andrew', 'Scott',  'andrew.scott@example.com', '09093456678'),
(24, 'Chloe', 'Green',  'chloe.green@example.com', '08099000878'),
(25, 'Joshua', 'Adams',  'joshua.adams@example.com', '08032145678'),
(26, 'Ella', 'Baker',  'ella.baker@example.com', '09082136578'),
(27, 'Christopher', 'Nelson',  'christopher.nelson@example.com', '09082212125'),
(28, 'Zoe', 'Carter',  'zoe.carter@example.com', '08043678321'),
(29, 'Ryan', 'Mitchell',  'ryan.mitchell@example.com', '09021356721'),
(30, 'Natalie', 'Perez',  'natalie.perez@example.com', '09012356721'),
(31, 'Nathan', 'Peter',  'nathan.peter@example.com', '09012345123'),
(32, 'samuel', 'floed',  'samuel.floed@example.com', '07012356721'),
(33, 'femi', 'emmanuel',  'femi.emmanuel@example.com', '08012356721'),
(34, 'darasimi', 'juwon',  'juwon.dara@example.com', '09012356721'),
(35, 'John', 'Doe', 'john.doe@example.com', '08012356721'),
(36, 'Jane', 'Smith', 'jane.smith@example.com', '09045345621'),
(37, 'Alice', 'Johnson', 'alice.johnson@example.com', '08154789004'),
(38, 'Bob', 'Brown', 'bob.brown@example.com', '09012456789'),
(39, 'Charlie', 'Davis', 'charlie.davis@example.com', '09023124567'),
(40, 'Dana', 'Wilson', 'dana.wilson@example.com', '07078781234');
SELECT* FROM customers;

INSERT INTO sales (sale_id, product_id, customer_id, sale_date, quantity, total_amount) VALUES
(1, 1, 101, '2024-10-01', 1, 1200.00),
(2, 2, 102, '2024-10-02', 2, 1600.00),
(3, 3, 101, '2024-10-03', 1, 150.00),
(4, 4, 103, '2024-10-04', 3, 180.00),
(5, 5, 104, '2024-10-05', 1, 100.00),
(6, 1, 105, '2024-10-06', 2, 2400.00),
(7, 6, 106, '2024-10-07', 1, 75.00),
(8, 7, 101, '2024-10-08', 1, 45.00),
(9, 8, 102, '2024-10-09', 1, 30.00),
(10, 9, 107, '2024-10-10', 2, 40.00),
(11, 10, 104, '2024-10-11', 1, 50.00),
(12, 5, 108, '2024-10-12', 1, 100.00),
(13, 3, 103, '2024-10-13', 2, 300.00),
(14, 2, 106, '2024-10-14', 1, 800.00),
(15, 7, 101, '2024-10-15', 2, 90.00),
(16, 4, 102, '2024-10-16', 1, 60.00),
(17, 8, 109, '2024-10-17', 1, 30.00),
(18, 9, 105, '2024-10-18', 3, 60.00),
(19, 10, 108, '2024-10-19', 1, 50.00),
(20, 1, 101, '2024-10-20', 1, 1200.00);
SELECT*FROM sales;

INSERT INTO payments (payment_id, sale_id, payment_method, payment_date, amount_paid) VALUES
(1, 1, 'Credit Card', '2024-10-01', 1200.00),
(2, 2, 'Cash', '2024-10-02', 1600.00),
(3, 3, 'Debit Card', '2024-10-03', 150.00),
(4, 4, 'Credit Card', '2024-10-05', 180.00),
(5, 5, 'PayPal', '2024-10-06', 100.00),
(6, 6, 'Credit Card', '2024-10-07', 2400.00),
(7, 7, 'Cash', '2024-10-07', 75.00),
(8, 8, 'Debit Card', '2024-10-09', 45.00),
(9, 9, 'Credit Card', '2024-10-09', 30.00),
(10, 10, 'PayPal', '2024-10-11', 40.00),
(11, 11, 'Credit Card', '2024-10-12', 50.00),
(12, 12, 'Debit Card', '2024-10-12', 100.00),
(13, 13, 'Credit Card', '2024-10-14', 300.00),
(14, 14, 'Cash', '2024-10-15', 800.00),
(15, 15, 'Credit Card', '2024-10-16', 90.00),
(16, 16, 'Debit Card', '2024-10-16', 60.00),
(17, 17, 'PayPal', '2024-10-18', 30.00),
(18, 18, 'Credit Card', '2024-10-19', 60.00),
(19, 19, 'Debit Card', '2024-10-19', 50.00),
(20, 20, 'Cash', '2024-10-21', 1200.00);
SELECT *FROM Payments;
--- Write a query to calculate the total quantity sold for each product category.  
SELECT p.category, SUM(s.quantity) AS total_quantity_sold
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category;

-- Write a query to count the number of sales for each customer.
SELECT customer_id, COUNT(*) AS number_of_sales
FROM sales
GROUP BY customer_id;

 --- Write a query to find the total revenue generated by each payment method.
SELECT payment_method, SUM(amount_paid) AS total_revenue
FROM payments
GROUP BY payment_method;

--- Write a query to retrieve a list of products, sorted by price in descending order.
SELECT *
FROM products
ORDER BY price DESC;

-- Write a query to get the sales records ordered by `sale_date` in ascending order
SELECT *
FROM sales
ORDER BY sale_date ASC;

-- Write a query to display customers sorted by their last name alphabetically. 
SELECT customer_id, first_name, last_name
FROM customers
ORDER BY last_name ASC;

--- Write a query to find products that have been sold more than 3 times, using `HAVING` with the 
--- `GROUP BY` statement.
SELECT p.product_id, p.product_name, SUM(s.quantity) AS total_quantity_sold
FROM products p
JOIN sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(s.quantity) > 3;
--- Write a query to list customers who have made total purchases (sum of `total_amount`) 
-- exceeding $100. 
SELECT customer_id, SUM(total_amount) AS total_purchases
FROM sales
GROUP BY customer_id
HAVING total_purchases > 100;

-- Write a query to find categories with a total sales revenue greater than $500. 
SELECT customer_id, SUM(total_amount) AS total_revenue
FROM sales
GROUP BY customer_id
HAVING total_revenue > 500;

-- Write a query to display the top 5 most expensive products.
SELECT product_id, product_name, price
FROM products
ORDER BY price DESC
LIMIT 5;

-- Write a query to display the 3 most recent sales.
SELECT sale_id, customer_id, total_amount, sale_date
FROM sales
ORDER BY sale_date DESC
LIMIT 3;

-- Write a query to list the first 5 customers who made purchases.
SELECT customer_id, MIN(sale_date) AS first_sale_date
FROM sales
GROUP BY customer_id
ORDER BY first_sale_date ASC
LIMIT 5;

-- Write a query to calculate the total revenue (sum of `total_amount`) for each product and use an 
-- alias `total_revenue` for the calculated field. 
SELECT SUM(total_amount) AS total_revenue
FROM sales;

-- Write a query to display each customer's full name as `customer_name` by concatenating 
-- `first_name` and `last_name`. 
SELECT CONCAT(first_name, ' ', last_name) AS customer_name
FROM customers;

-- Use aliasing to create a column called `sales_value` representing the product of `price` and 
-- quantity for each sale. 
SELECT total_amount, quantity, (total_amount * quantity) AS sales_value
FROM sales;

---  Write a query to display the product names in uppercase.
SELECT UPPER(product_name) AS product_name_uppercase
FROM products;

--- Write a query to extract the domain from the `email` field of each customer.
SELECT email, SUBSTRING_INDEX(email, '@', -1) AS domain
FROM customers;

-- Write a query to display the first three characters of each customer's `last_name`
SELECT last_name, SUBSTRING(last_name, 1, 3) AS first_three_chars
FROM customers;

--- Write a query that trims extra spaces around product names and displays them.
SELECT product_name, TRIM(product_name) AS trimmed_product_name
FROM products;

--- Write a query to calculate the average price of all products
SELECT AVG(price) AS average_price
FROM products;

--- Write a query to find the maximum `total_amount` from the `sales` table. 
SELECT MAX(total_amount) AS max_total_amount
FROM sales;

-- Write a query to calculate the total amount paid for all sales. 
SELECT SUM(total_amount) AS total_sales_amount
FROM sales;

-- Write a query to calculate the minimum and maximum sale quantities. 
SELECT MIN(quantity) AS min_quantity, MAX(quantity) AS max_quantity
FROM sales;

-- Write a query to determine the number of distinct product categories available. 
SELECT COUNT(DISTINCT category) AS distinct_categories
FROM products;

--- Write a query to identify the customer with the highest total purchase amount. 
SELECT customer_id, SUM(total_amount) AS total_purchase_amount
FROM sales
GROUP BY customer_id
ORDER BY total_purchase_amount DESC
LIMIT 1;

 --- Calculate the total number of products sold for each product category and sort the result in 
-- descending order. 
SELECT category, SUM(quantity) AS total_products_sold
FROM sales
JOIN products ON sales.product_id = products.product_id
GROUP BY category
ORDER BY total_products_sold DESC;

-- Write a query that retrieves the details of sales made in the last 30 days.
SELECT *
FROM sales
WHERE sale_date >= CURDATE() - INTERVAL 30 DAY;

-- Create a query to display the top 3 customers with the most sales in terms of quantity.
SELECT customer_id, SUM(quantity) AS total_quantity_sold
FROM sales
GROUP BY customer_id
ORDER BY total_quantity_sold DESC
LIMIT 3;

--- Write a query to list all customers whose names start with the letter "J". 
SELECT *
FROM customers
WHERE first_name LIKE 'J%';


--- Write a query to calculate the total unpaid amount for each sale by subtracting `amount_paid` 
-- from `total_amount`. 
SELECT 
    s.sale_id, 
    s.total_amount, 
    COALESCE(SUM(p.amount_paid), 0) AS payment_paid
FROM 
    sales s
LEFT JOIN 
    payments p ON s.sale_id = p.sale_id
GROUP BY 
    s.sale_id, s.total_amount;
    
   ---  Write a query to calculate the total unpaid amount for each sale by subtracting `amount_paid` 
--- from `total_amount`. 
   SELECT 
    s.sale_id, 
    s.total_amount, 
    COALESCE(SUM(p.amount_paid), 0) AS amount_paid, 
    (s.total_amount - COALESCE(SUM(p.amount_paid), 0)) AS unpaid_amount
FROM 
    sales s
LEFT JOIN 
    payments p ON s.sale_id = p.sale_id
GROUP BY 
    s.sale_id, s.total_amount;
    
   --  Write a query to find sales where the payment method was "Credit Card" and the 
-- `total_amount` is greater than $50. 
    
    SELECT 
    s.sale_id, 
    s.total_amount, 
    p.payment_method
FROM 
    sales s
JOIN 
    payments p ON s.sale_id = p.sale_id
WHERE 
    p.payment_method = 'Credit Card' 
    AND s.total_amount > 50;
    
  --- Write a query that lists all sales made by customers whose last names contain the letter "e". 
 

SELECT * 
FROM customers
WHERE last_name LIKE '%e%';



















































