
-- 1. CHECK TOTAL ROWS IN ALL TABLES

SELECT 'customers' AS table_name, COUNT(*) AS total_rows FROM customers
UNION ALL
SELECT 'categories', COUNT(*) FROM categories
UNION ALL
SELECT 'products', COUNT(*) FROM products
UNION ALL
SELECT 'orders', COUNT(*) FROM orders
UNION ALL
SELECT 'order_items', COUNT(*) FROM order_items
UNION ALL
SELECT 'payments', COUNT(*) FROM payments;


-- 2. CHECK MISSING VALUES IN CUSTOMERS

SELECT *
FROM customers
WHERE customer_name IS NULL
   OR email IS NULL
   OR city IS NULL;


-- 3. CHECK MISSING VALUES IN PRODUCTS

SELECT *
FROM products
WHERE product_name IS NULL
   OR category_id IS NULL
   OR price IS NULL;


-- 4. CHECK MISSING VALUES IN ORDERS

SELECT *
FROM orders
WHERE customer_id IS NULL
   OR order_date IS NULL
   OR order_status IS NULL;


-- 5. CHECK DUPLICATE CUSTOMER IDs

SELECT customer_id, COUNT(*) AS duplicate_count
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;


-- 6. CHECK DUPLICATE CUSTOMER EMAILS

SELECT email, COUNT(*) AS duplicate_count
FROM customers
GROUP BY email
HAVING COUNT(*) > 1;


-- 7. CHECK DUPLICATE PRODUCT IDs

SELECT product_id, COUNT(*) AS duplicate_count
FROM products
GROUP BY product_id
HAVING COUNT(*) > 1;


-- 8. CHECK INVALID PRODUCT PRICES

SELECT *
FROM products
WHERE price <= 0;


-- 9. CHECK INVALID ORDER ITEM VALUES

SELECT *
FROM order_items
WHERE quantity <= 0
   OR unit_price <= 0;


-- 10. CHECK FUTURE ORDER DATES

SELECT *
FROM orders
WHERE order_date > CURRENT_DATE;


-- 11. CHECK INVALID OR MISSING CUSTOMER REFERENCES IN ORDERS

SELECT o.*
FROM orders o
LEFT JOIN customers c
    ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;


-- 12. CHECK INVALID ORDER REFERENCES IN ORDER_ITEMS

SELECT oi.*
FROM order_items oi
LEFT JOIN orders o
    ON oi.order_id = o.order_id
WHERE o.order_id IS NULL;


-- 13. CHECK INVALID PRODUCT REFERENCES IN ORDER_ITEMS

SELECT oi.*
FROM order_items oi
LEFT JOIN products p
    ON oi.product_id = p.product_id
WHERE p.product_id IS NULL;


-- 14. CHECK INVALID CATEGORY REFERENCES IN PRODUCTS

SELECT p.*
FROM products p
LEFT JOIN categories c
    ON p.category_id = c.category_id
WHERE c.category_id IS NULL;


-- 15. CHECK ORDERS WITHOUT PAYMENT RECORDS

SELECT o.order_id
FROM orders o
LEFT JOIN payments p
    ON o.order_id = p.order_id
WHERE p.order_id IS NULL;


-- 16. CHECK DUPLICATE PAYMENTS FOR AN ORDER

SELECT order_id, COUNT(*) AS payment_count
FROM payments
GROUP BY order_id
HAVING COUNT(*) > 1;


-- 17. CHECK DUPLICATE ORDER ITEMS

SELECT order_id, product_id, COUNT(*) AS duplicate_count
FROM order_items
GROUP BY order_id, product_id
HAVING COUNT(*) > 1;


-- 18. CHECK INVALID ORDER STATUS VALUES

SELECT DISTINCT order_status
FROM orders
ORDER BY order_status;


-- 19. CHECK INVALID OR MISSING PAYMENT METHODS

SELECT *
FROM payments
WHERE payment_method IS NULL;


-- 20. CHECK CUSTOMERS WITH BLANK NAMES OR EMAILS

SELECT *
FROM customers
WHERE TRIM(customer_name) = ''
   OR TRIM(email) = '';



