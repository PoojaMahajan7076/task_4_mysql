use masai;

select * from customers;
select * from orders;
select * from orderdetails;
select * from products;
select * from shippers;
select * from payments;

-- Basic SELECT & Filtering -- 
-- 1. View all customers from 'India'
SELECT * 
FROM customers
WHERE country = 'India';

-- 2 Find total number of customers by country-- 
SELECT country, COUNT(customerid) AS total_customers
FROM customers
GROUP BY country
ORDER BY total_customers DESC;

-- 2. Orders placed after 1st January 2023
SELECT * 
FROM orders
WHERE orderdate > '2023-01-01';

-- Sorting (ORDER BY) --
-- 3. Top 10 highest value orders by total amount
SELECT orderid, customerid, total_order_amount as totalamount
FROM orders
ORDER BY totalamount DESC
LIMIT 10;


-- Aggregation & GROUP BY --
-- 4. Total sales by product category
SELECT p.sub_category, SUM(od.quantity) AS total_sales
FROM orderdetails od
JOIN products p ON od.productid = p.productid
GROUP BY p.sub_category
ORDER BY total_sales DESC;

-- 5. Average order value by country
SELECT c.country, AVG(o.total_order_amount) AS avg_order_value
FROM customers c
JOIN orders o ON c.customerid = o.customerid
GROUP BY c.country
ORDER BY avg_order_value DESC;

-- Joins --
-- 6. Orders with customer name, product name, and shipper
SELECT o.orderid, c.firstname, p.product, s.companyname, od.quantity
FROM orders o
JOIN customers c ON o.customerid = c.customerid
JOIN orderdetails od ON o.orderid = od.orderid
JOIN products p ON od.productid = p.productid
JOIN shippers s ON o.shipperid = s.shipperid
ORDER BY o.orderid;

-- Subqueries --
-- 7. Customers who placed orders above average order amount
SELECT customerid, firstname
FROM customers
WHERE customerid IN (
    SELECT customerid
    FROM orders
    WHERE total_order_amount > (SELECT AVG(total_order_amount) FROM orders)
);

-- Create a View --
-- 8. Monthly sales summary view
CREATE VIEW monthly_sales_summary AS
SELECT DATE_FORMAT(o.orderdate, '%Y-%m') AS month, 
       SUM(od.quantity) AS total_sales
FROM orders o
JOIN orderdetails od ON o.orderid = od.orderid
GROUP BY DATE_FORMAT(o.orderdate, '%Y-%m')
ORDER BY month;

-- 9. Create index on orderdate to speed up date-based queries
CREATE INDEX idx_order_date ON orders(orderdate);

-- 10. Payment method usage count
SELECT paymenttype, COUNT(*) AS total_transactions
FROM payments
GROUP BY paymenttype
ORDER BY total_transactions DESC;





