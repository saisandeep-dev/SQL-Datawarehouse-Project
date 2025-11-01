CREATE TABLE silver.crm_cust_info(
cst_id int,
cst_key varchar(50),
cst_firstname varchar(50),
cst_lastname varchar(50),
cst_marital_status varchar(50),
cst_gender varchar(50),
cst_create_date varchar (50));

-----*CRM_PRD_INFO*-------
CREATE TABLE silver.crm_prd_info(
prd_id  INT,
prd_key nvarchar(50),
prd_nm nvarchar(50),
prd_cost int,
prd_line nvarchar(50),
prd_start_dt datetime,
prd_end_dt datetime
);

-----*CRM_SALES_DETAILS*------
CREATE TABLE silver.crm_sales_detalis(
sls_ord_num nvarchar(50),
sls_prod_key nvarchar(50),
sls_cust_id int,
sls_order_dt int,
sls_ship_dt int,
sls_due_dt int,
sls_sales int,
sls_quatity int,
sls_price int);

-----*CUST_AZ12*------
CREATE TABLE silver.erp_cust_az12(
cid Nvarchar(50),
bdate Date,
gen nvarchar(50));

-------*LOC_A101*-----
CREATE TABLE silver.erp_loc_a101(
cid nvarchar(50),
cntry nvarchar(50));

------*PX_CAT_G1V2*-----
CREATE TABLE silver.erp_px_cat_g1v2(
id nvarchar(50),
cat nvarchar(50),
subcat nvarchar(50),
maintenance nvarchar(50));
