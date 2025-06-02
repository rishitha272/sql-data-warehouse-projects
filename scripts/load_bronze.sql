/*
===============================================================================
Description: 
This script loads data from CSV files into PostgreSQL tables in the 'bronze' schema.
It covers two groups of tables: CRM Tables and ERP Tables.

For each table:
- Data is loaded from the corresponding CSV file using the psql `\copy` command.
- The CSV files use commas as delimiters and contain a header row.
- After loading, simple SELECT queries are included to verify the data.

===============================================================================
*/

/* 
-- CRM Tables Data Load
These commands import data from CSV files located in the 'source_crm' folder into the CRM tables:
- bronze.crm_cust_info: Customer information data.
- bronze.crm_prd_info: Product information data.
- bronze.crm_sales_details: Sales transaction details.

The `\copy` command runs client-side and reads files from your local system.Run on PSQL
The CSV files have a header row and comma-separated fields.
*/
--Run these commands on PSQL.To run on PSQL go to Databases-- right click on DataWarehouse -- select PSQL
\copy bronze.crm_cust_info FROM 'D:/Downloads/sql-data-warehouse-project/sql-data-warehouse-project/datasets/source_crm/cust_info.csv' DELIMITER ',' CSV HEADER;
\copy bronze.crm_prd_info FROM 'D:/Downloads/sql-data-warehouse-project/sql-data-warehouse-project/datasets/source_crm/prd_info.csv' DELIMITER ',' CSV HEADER;
\copy bronze.crm_sales_details FROM 'D:/Downloads/sql-data-warehouse-project/sql-data-warehouse-project/datasets/source_crm/sales_details.csv' DELIMITER ',' CSV HEADER;

-- Verify CRM Tables Data

SELECT * FROM bronze.crm_cust_info;
SELECT * FROM bronze.crm_prd_info;
SELECT * FROM bronze.crm_sales_details;

/* 
-- ERP Tables Data Load
These commands import data from CSV files located in the 'source_erp' folder into the ERP tables:
- bronze.erp_loc_a101: Location data.
- bronze.erp_cust_az12: Customer ERP data.
- bronze.erp_px_cat_g1v2: Product category data.

Again, the CSV files have headers and comma delimiters.
*/
--Run these commands on PSQL
\copy bronze.erp_loc_a101 FROM 'D:/Downloads/sql-data-warehouse-project/sql-data-warehouse-project/datasets/source_erp/loc_a101.csv' DELIMITER ',' CSV HEADER;
\copy bronze.erp_cust_az12 FROM 'D:/Downloads/sql-data-warehouse-project/sql-data-warehouse-project/datasets/source_erp/cust_az12.csv' DELIMITER ',' CSV HEADER;
\copy bronze.erp_px_cat_g1v2 FROM 'D:/Downloads/sql-data-warehouse-project/sql-data-warehouse-project/datasets/source_erp/px_cat_g1v2.csv' DELIMITER ',' CSV HEADER;


-- Verify CRM Tables Data

SELECT * FROM bronze.erp_loc_a101;
SELECT * FROM bronze.erp_cust_az12;
SELECT * FROM bronze.erp_px_cat_g1v2;
