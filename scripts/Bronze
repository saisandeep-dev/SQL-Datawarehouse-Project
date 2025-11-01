CREATE DATABASE datawarehouse;

use datawarehouse;

Create schema bronze;

create schema silver;

create schema gold;

Create table bronze.crm_cust_info(
cst_id int,
cst_key varchar(50),
cst_firstname varchar(50),
cst_lastname varchar(50),
cst_marital_status varchar(50),
cst_gender varchar(50),
cst_create_date varchar (50));

Bulk insert bronze.crm_cust_info
from 'C:\Users\Akhila\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
with (FIRSTROW=2,
FIELDTERMINATOR = ',',
TABLOCK);

select * from bronze.crm_cust_info

CREATE TABLE bronze.crm_prd_info(
prd_id  INT,
prd_key nvarchar(50),
prd_nm nvarchar(50),
prd_cost int,
prd_line nvarchar(50),
prd_start_dt datetime,
prd_end_dt datetime);

Bulk insert bronze.crm_prd_info
from 'C:\Users\Akhila\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
with (FIRSTROW=2,
FIELDTERMINATOR = ',',
TABLOCK);

select * from bronze.crm_prd_info

CREATE TABLE bronze.crm_sales_detalis(
sls_ord_num nvarchar(50),
sls_prod_key nvarchar(50),
sls_cust_id int,
sls_order_dt int,
sls_ship_dt int,
sls_due_dt int,
sls_sales int,
sls_quatity int,
sls_price int);

Bulk insert bronze.crm_sales_detalis
from 'C:\Users\Akhila\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
with (FIRSTROW=2,
FIELDTERMINATOR = ',',
TABLOCK);

select * from bronze.crm_sales_detalis

CREATE TABLE bronze.erp_cust_az12(
cid Nvarchar(50),
bdate Date,
gen nvarchar(50));

Bulk insert bronze.erp_cust_az12
from 'C:\Users\Akhila\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
with (FIRSTROW=2,
FIELDTERMINATOR = ',',
TABLOCK);

SElect * from bronze.erp_cust_az12


CREATE TABLE bronze.erp_loc_a101(
cid nvarchar(50),
cntry nvarchar(50));


Bulk insert bronze.erp_loc_a101
from 'C:\Users\Akhila\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
with (FIRSTROW=2,
FIELDTERMINATOR = ',',
TABLOCK);

SELECT * FROM bronze.erp_loc_a101


CREATE TABLE bronze.erp_px_cat_g1v2(
id nvarchar(50),
cat nvarchar(50),
subcat nvarchar(50),
maintenance nvarchar(50));

Bulk insert bronze.erp_px_cat_g1v2
from 'C:\Users\Akhila\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
with (FIRSTROW=2,
FIELDTERMINATOR = ',',
TABLOCK);

select * from bronze.erp_px_cat_g1v2
