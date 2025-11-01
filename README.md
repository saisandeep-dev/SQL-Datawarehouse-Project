SQL Data Warehouse Project
Project Overview

This project demonstrates the design and implementation of a complete Data Warehouse pipeline using a layered approach consisting of Bronze, Silver, and Gold layers.
It combines data from CRM and ERP systems, performs data cleaning and transformation, and enables both Exploratory Data Analysis (EDA) and Advanced Data Analysis (ADA) for business insights.

Data Architecture
1. Bronze Layer – Raw Data Layer

The Bronze Layer stores raw, unmodified data extracted from the source systems.

Sources:

CRM System: Customer, product, and sales information
Files: cust_info.xlsx, prd_info.xlsx, sales_details.xlsx

ERP System: Operational and product category data
Files: CUST_AZ12.xlsx, LOC_A101.xlsx, PX_CAT_G1V2.xlsx

This layer serves as the foundation for the ETL pipeline, keeping a direct copy of all original data.

2. Silver Layer – Cleaned and Transformed Data Layer

The Silver Layer contains standardized, cleaned, and integrated data ready for analysis and modeling.

Key Transformations:

Removed duplicate and null records

Standardized column names, formats, and data types

Handled missing values appropriately

Established relationships between CRM and ERP entities

Tables:

crm_sales_details

crm_cust_info

crm_prd_info

erp_cust_az12

erp_loc_a101

erp_px_cat_g1v2

3. Gold Layer – Analytical Data Layer

The Gold Layer holds the final, analysis-ready tables used for reporting and analytics.

Tables:

fact_sales

dim_customers

dim_products

Relationships:

The fact_sales table is linked to dim_customers and dim_products using foreign keys, supporting analytical queries and dashboards.

Exploratory Data Analysis (EDA)

The EDA phase included:

Reviewing customer demographics such as country, gender, and marital status

Analyzing sales trends by product and region

Checking for missing data, outliers, and inconsistencies

Validating data alignment between CRM and ERP systems

Advanced Data Analysis (ADA)

The ADA phase focused on identifying key business insights, such as:

Top-performing products and categories

Sales performance by region and customer segment

Customer segmentation and purchasing trends

Tools and Technologies

SQL: Used for data extraction, transformation, and querying

Excel / CSV: Used as data sources and for preliminary analysis

Project Structure
SQL_DataWarehouse_Project/
│
├── datasets/
│   ├── source_crm/
│   │   ├── cust_info.xlsx
│   │   ├── prd_info.xlsx
│   │   └── sales_details.xlsx
│   └── source_erp/
│       ├── CUST_AZ12.xlsx
│       ├── LOC_A101.xlsx
│       └── PX_CAT_G1V2.xlsx
│
├── bronze/
├── silver/
├── gold/
└── README.md

Summary

This project demonstrates a complete ETL and Data Warehousing workflow — from raw data ingestion to analytical insights.
It highlights practical experience in:

SQL-based Data Modeling and Transformation

ETL Process Design

Exploratory and Advanced Data Analysis

Multi-layer Data Architecture Development