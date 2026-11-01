-- CRATE TABLE PRODUCTS ---

-- CREATE TABLE products (
-- product_id INT PRIMARY KEY,
-- product_name VARCHAR(100) NOT NULL,
-- category_id INT NOT NULL,
-- price NUMERIC(12,2) NOT NULL,
-- cost NUMERIC(12,2) NOT NULL,

-- CONSTRAINT fk_product_category
--     FOREIGN KEY (category_id)
--     REFERENCES categories(category_id)

-- );

-- CREATE TABLE categories -----

-- CREATE TABLE categories (
-- category_id INT PRIMARY KEY,
-- category_name VARCHAR(50) UNIQUE NOT NULL
-- );


-- CREATE TABLE orders ---

-- CREATE TABLE orders (
-- order_id INT PRIMARY KEY,
-- customer_id INT NOT NULL,
-- order_date DATE NOT NULL,
-- order_status VARCHAR(20) NOT NULL,

-- CONSTRAINT fk_order_customer
--     FOREIGN KEY (customer_id)
--     REFERENCES customers(customer_id),

-- CONSTRAINT chk_order_status
--     CHECK (
--         order_status IN
--         ('Completed','Cancelled','Returned','Pending')
--     )

-- );


-- CREATE TABLE order_items------

-- CREATE TABLE order_items (
-- order_item_id INT PRIMARY KEY,
-- order_id INT NOT NULL,
-- product_id INT NOT NULL,
-- quantity INT NOT NULL,
-- unit_price NUMERIC(12,2) NOT NULL,

-- CONSTRAINT fk_item_order
--     FOREIGN KEY (order_id)
--     REFERENCES orders(order_id),

-- CONSTRAINT fk_item_product
--     FOREIGN KEY (product_id)
--     REFERENCES products(product_id),

-- CONSTRAINT chk_quantity
--     CHECK (quantity > 0),

-- CONSTRAINT chk_unit_price
--     CHECK (unit_price >= 0)

-- );

-- CREATE TABLE payments---

-- CREATE TABLE payments (
-- payment_id INT PRIMARY KEY,
-- order_id INT UNIQUE NOT NULL,
-- payment_method VARCHAR(30) NOT NULL,
-- payment_status VARCHAR(20) NOT NULL,
-- payment_date DATE,

-- CONSTRAINT fk_payment_order
--     FOREIGN KEY (order_id)
--     REFERENCES orders(order_id)

-- );