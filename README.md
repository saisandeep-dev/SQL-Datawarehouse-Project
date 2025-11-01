# SQL Data Warehouse Project

## Overview

This project demonstrates the complete design and implementation of a **SQL-based Data Warehouse** using a multi-layer architecture — **Bronze**, **Silver**, and **Gold** layers.  
It integrates data from CRM and ERP systems, performs data cleaning and transformation, and enables analytical insights through Exploratory Data Analysis (EDA) and Advanced Data Analysis (ADA).

---

## Architecture Overview

### 1. Bronze Layer – Raw Data
The Bronze layer stores raw data directly from the source systems. It preserves the original format for traceability and ensures no information is lost during ingestion.

**Sources:**
- **CRM System** – Customer, product, and sales data  
  Files: `cust_info.xlsx`, `prd_info.xlsx`, `sales_details.xlsx`
- **ERP System** – Customer, location, and category data  
  Files: `CUST_AZ12.xlsx`, `LOC_A101.xlsx`, `PX_CAT_G1V2.xlsx`

---

### 2. Silver Layer – Cleaned and Transformed Data
The Silver layer contains cleaned and standardized data from the Bronze layer, ready for further processing and analysis.

**Key Steps:**
- Removed duplicates and null values  
- Standardized column names and formats  
- Handled missing and inconsistent data  
- Created logical relationships between CRM and ERP tables  

**Main Tables:**
- `crm_cust_info`  
- `crm_prd_info`  
- `crm_sales_details`  
- `erp_cust_az12`  
- `erp_loc_a101`  
- `erp_px_cat_g1v2`

---

### 3. Gold Layer – Analytical Data
The Gold layer includes the analytical models used for reporting and business analysis.  
Dimension and fact tables are designed for efficient querying and visualization.

**Views Created:**
- `gold.dim_customers` – Customer demographic and location details  
- `gold.dim_products` – Product category and pricing information  
- `gold.fact_sales` – Central fact table containing transactional sales data  

---

## Data Flow Summary

**Source Data → Bronze Layer → Silver Layer → Gold Layer → Analytics**

Each layer adds value:
1. **Bronze:** Raw data ingestion  
2. **Silver:** Data cleaning and transformation  
3. **Gold:** Analytical modeling and insights  

---

## SQL Implementation

This project is implemented entirely in **T-SQL**, including schema design, table creation, data transformation, and analytical view creation.

**Highlights:**
- Created separate schemas (`silver`, `gold`) for modular organization  
- Defined tables for CRM and ERP systems  
- Built analytical views with `JOIN` and `ROW_NUMBER()` functions  
- Verified relationships between dimensions and facts  

Script file:  
`SQL_DataWarehouse_Project.sql`

---

## Analysis Summary

### Exploratory Data Analysis (EDA)
- Analyzed customer demographics (country, gender, marital status)  
- Identified sales trends by region and product  
- Validated data consistency across CRM and ERP systems  

### Advanced Data Analysis (ADA)
- Determined top-performing products and categories  
- Analyzed regional sales performance  
- Segmented customers based on purchase patterns  

---

## Tools and Technologies

| Category | Tools |
|-----------|-------|
| Database | Microsoft SQL Server / Azure SQL |
| Query Language | T-SQL |
| Data Sources | Excel / CSV |
| Layers | Bronze → Silver → Gold |
| Analysis | SQL Queries and Aggregations |

---

## Project Folder Structure

SQL_DataWarehouse_Project/
│
├── datasets/
│ ├── source_crm/
│ │ ├── cust_info.xlsx
│ │ ├── prd_info.xlsx
│ │ └── sales_details.xlsx
│ └── source_erp/
│ ├── CUST_AZ12.xlsx
│ ├── LOC_A101.xlsx
│ └── PX_CAT_G1V2.xlsx
│
├── silver/ # Cleaned and transformed data
├── gold/ # Analytical views and reports
├── scripts/
│ └── SQL_DataWarehouse_Project.sql
└── README.md


---

## Key Learnings

- Designed a **multi-layered ETL architecture** using SQL  
- Applied **data transformation and modeling techniques**  
- Created **dimension and fact tables** for analytical querying  
- Implemented SQL **window functions and joins** effectively  
- Gained experience in **building a scalable data warehouse pipeline**

---
## Summary

This project presents an end-to-end **ETL and Data Warehouse workflow**, demonstrating how raw data can be converted into meaningful analytical insights.  
It highlights key skills in:

- SQL Data Modeling and Transformation  
- ETL Workflow Development  
- Exploratory and Advanced Data Analysis  
- Building a Structured Data Warehouse Architecture
