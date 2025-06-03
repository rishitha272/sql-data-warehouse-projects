DROP TABLE IF EXISTS bronze.crm_cust_info;

CREATE TABLE bronze.crm_cust_info(
	cst_id NUMERIC(50),
	cst_key varchar(50),
	cst_firstname varchar(100),
	cst_lastname varchar(100),
	cst_marital_status varchar(10),
	cst_gndr varchar(10),
	cst_create_date date
);
 DROP TABLE IF EXISTS bronze.crm_prd_info;
 
CREATE TABLE bronze.crm_prd_info(
	prd_id NUMERIC(50),
	prd_key varchar(50),
	prd_nm varchar(100),
	prd_cost numeric(100),
	prd_line varchar(10),
	prd_start_dt date,
	prd_end_dt date
);

DROP TABLE IF EXISTS bronze.crm_sales_Details;

CREATE TABLE bronze.crm_sales_Details(
	sls_ord_num varchar(50),
	sls_prd_key varchar(50),
	sls_cust_id numeric(100),
	sls_order_dt numeric(100),
	sls_ship_dt NUMERIC,
	sls_due_dt NUMERIC,
	sls_sales NUMERIC,
	sls_quantity NUMERIC,
	sls_price NUMERIC
);
------------------
DROP TABLE IF EXISTS bronze.erp_loc_a101;

CREATE TABLE bronze.erp_loc_a101 (
    cid    VARCHAR(50),
    cntry  VARCHAR(50)
);

DROP TABLE IF EXISTS bronze.erp_cust_az12;

CREATE TABLE bronze.erp_cust_az12 (
    cid    VARCHAR(50),
    bdate  DATE,
    gen    VARCHAR(50)
);

DROP TABLE IF EXISTS bronze.erp_px_cat_g1v2;

CREATE TABLE bronze.erp_px_cat_g1v2 (
    id           VARCHAR(50),
    cat          VARCHAR(50),
    subcat       VARCHAR(50),
    maintenance  VARCHAR(50)
);

