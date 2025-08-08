# 🛒 E-commerce Database SQL Project

## 📌 Project Overview
This project demonstrates SQL skills using an **E-commerce database** that contains multiple related tables such as customers, orders, products, shippers, and payments.  
The aim is to perform **meaningful and business-relevant queries** to extract insights for decision-making and reporting.

---

## 📂 Dataset Structure

The database contains the following tables:

1. **customers** – Stores customer details (CustomerID, Name, Country, etc.)
2. **orders** – Stores order-level information (OrderID, CustomerID, OrderDate, ShipperID, etc.)
3. **orderdetails** – Stores details of products in each order (OrderID, ProductID, Quantity, Price)
4. **products** – Stores product details (ProductID, ProductName, Category, UnitPrice, Stock)
5. **shippers** – Stores shipping provider information (ShipperID, ShipperName, Phone)
6. **payments** – Stores payment information (PaymentID, CustomerID, Amount, PaymentDate, PaymentMethod)

---

## 🎯 Tasks and Queries

### 1. **Customer Insights**
- List all customers with their country and contact details.  
- Find the top 5 customers by total spending.  
- Count customers per country.

### 2. **Order Analysis**
- Show all orders with customer name, order date, and shipper name.  
- Find the total number of orders placed in each month.  
- Identify customers who have not placed any orders.

### 3. **Product Insights**
- List all products with their category and price.  
- Find the top 5 best-selling products.  
- Identify products with zero stock.

### 4. **Revenue Analysis**
- Calculate total sales revenue for each product category.  
- Find monthly revenue trends.  
- Show total revenue per customer.

### 5. **Shipping Performance**
- List shippers with the number of orders they delivered.  
- Find the fastest and slowest shipping times.  

### 6. **Payment Analysis**
- Show total payments received per payment method.  
- Find customers who have made the highest total payments.

---

## 🛠 Technologies Used
- **SQL** – Data querying and analysis
- **MySQL Workbench** – Query execution and database management

---

## 📈 Key Learnings
- Writing **JOIN queries** to combine multiple tables  
- Using **aggregate functions** for insights  
- Applying **GROUP BY, ORDER BY, and filtering techniques**  
- Real-world **business questions** for data analysis

---
