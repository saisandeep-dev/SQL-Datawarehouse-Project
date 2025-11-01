# SQL Data Warehouse Project

## 📊 Project Overview

This project demonstrates the end-to-end Data Warehouse pipeline using a multi-layered architecture — Bronze, Silver, and Gold layers.
It integrates data from CRM and ERP systems, performs data cleaning, transformation, and analytics, and applies Exploratory Data Analysis (EDA) and Advanced Data Analysis (ADA).



## 🧱 Data Architecture

### 1. **Bronze Layer (Raw Data Layer)**

* Data is extracted directly from **source systems**:

  * `CRM` (Customer Relationship Management)
  * `ERP` (Enterprise Resource Planning)
* Data files included:

  * CRM: `cust_info.xlsx`, `prd_info.xlsx`, `sales_details.xlsx`
  * ERP: `CUST_AZ12.xlsx`, `LOC_A101.xlsx`, `PX_CAT_G1V2.xlsx`
* This layer stores **raw, unprocessed data**.



### 2. **Silver Layer (Cleaned & Transformed Data Layer)**

* Cleaned and standardized data from Bronze Layer.
* Key transformations performed:

  * Removed duplicates and null values.
  * Standardized column names and formats.
  * Handled missing values.
  * Created relationships between CRM and ERP datasets.
* Tables include:

  * `crm_sales_details`
  * `crm_cust_info`
  * `crm_prd_info`
  * `erp_cust_az12`
  * `erp_loc_a101`
  * `erp_px_cat_g1v2`



### 3. **Gold Layer (Analytical Layer)**

* Contains final, analysis-ready dimension and fact tables.
* Tables:

  * `fact_sales`
  * `dim_customers`
  * `dim_products`
* Relationships established between these tables:

  * `fact_sales` links to both `dim_customers` and `dim_products` using foreign keys.



## 🔍 Exploratory Data Analysis (EDA)

Performed in this phase:

* Analyzed **customer demographics** (country, gender, marital status).
* Reviewed **sales trends** by product and location.
* Checked for **outliers and missing values**.
* Validated data consistency between CRM and ERP sources.


## 📈 Advanced Data Analysis (ADA)

  * Top-performing products.
  * Sales distribution by country and category.
  * Customer segmentation based on purchase behavior.



## ⚙️ Tools & Technologies

* **SQL** – for data transformation and analysis
* **Excel / CSV** – for source data

SQL_datawarehouse_project_1/
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


✅ Summary

This project demonstrates a complete **Data Warehouse ETL process**, starting from raw data ingestion to analytical insights.
It showcases skills in:

* SQL Data Modeling
* ETL and Data Cleaning
* EDA & ADA
* Building a structured multi-layer architecture

