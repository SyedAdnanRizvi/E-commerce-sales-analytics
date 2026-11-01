
# E-Commerce Sales & Customer Analytics using PostgreSQL

## Project Overview

This project focuses on analyzing e-commerce sales and customer data using PostgreSQL.

The goal is to explore sales performance, customer behavior, product performance, and business trends using SQL queries.

## Business Objectives

- Analyze overall sales and revenue.
- Identify top-performing products.
- Analyze category-wise revenue.
- Understand customer purchasing behavior.
- Track monthly sales performance.
- Perform data quality checks.

## Tools Used

- PostgreSQL
- SQL
- pgAdmin
- GitHub

## Database Tables

This project contains 6 relational tables:

1. customers
2. categories
3. products
4. orders
5. order_items
6. payments

## Dataset Information

The project uses synthetic e-commerce data.

| Table | Records |
|---|---:|
| Customers | 2,000 |
| Categories | 10 |
| Products | 500 |
| Orders | 10,000 |
| Order Items | 30,000 |
| Payments | 10,000 |
| Total | 52,510 |

## SQL Skills Demonstrated

- SELECT, WHERE, ORDER BY
- GROUP BY and HAVING
- INNER JOIN and LEFT JOIN
- Subqueries
- Common Table Expressions (CTEs)
- CASE WHEN
- Window Functions
- Ranking Functions
- Date Functions
- Aggregate Functions
- Data Cleaning and Validation

## Data Quality Checks

The project includes checks for:

- Missing values
- Duplicate records
- Invalid prices and quantities
- Invalid date values
- Referential integrity
- Missing payment records
- Duplicate payment records

## Key Business Insights

Add your actual findings here after running the business analysis queries.

Examples of analysis:

- Overall completed sales revenue
- Top 5 products by revenue
- Revenue by product category
- Monthly revenue trends
- Top 5 customers by spending
- Order status distribution
- Average order value

## Project Structure

ecommerce-sales-analytics/
- 01_create_tables.sql
- 02_generate_data.sql
- 03_data_quality_checks.sql
- 04_business_analysis.sql
- README.md

## How to Run This Project

1. Install PostgreSQL.
2. Create a new database.
3. Execute 01_create_tables.sql.
4. Execute 02_generate_data.sql.
5. Execute 03_data_quality_checks.sql.
6. Execute 04_business_analysis.sql.
7. Review the results.

## Project Limitations

- The dataset is synthetic and does not represent a real company.
- Business findings are based on the generated sample data.
- Some customer order patterns are predefined during data generation.

## Author

Data Analytics Portfolio Project
