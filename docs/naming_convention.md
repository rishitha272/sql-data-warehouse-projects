Here’s a concise **README-style documentation** for your Git repo that outlines your data warehouse naming conventions:

---

# Data Warehouse Naming Conventions

This document defines the naming standards for schemas, tables, views, columns, and stored procedures used across the data warehouse project to ensure consistency, clarity, and maintainability.

---

## General Principles

* Use **snake\_case** with lowercase letters and underscores (`_`) for all object names.
* Use **English** for all names.
* Avoid using SQL **reserved keywords** as object names.

---

## Table Naming Conventions

### Bronze Rules

* Format: `<sourcesystem>_<entity>`
* Names match exactly with source system table names.
* Example: `crm_customer_info` — Customer data from CRM system.

### Silver Rules

* Same as Bronze.
* Format: `<sourcesystem>_<entity>`
* Example: `crm_customer_info`

### Gold Rules

* Use meaningful business-aligned names with category prefixes.
* Format: `<category>_<entity>`
* Categories:

  * `dim_` for dimension tables
  * `fact_` for fact tables
  * `report_` for reporting tables
* Examples:

  * `dim_customers` — Customer dimension
  * `fact_sales` — Sales fact table

| Prefix    | Description      | Examples                      |
| --------- | ---------------- | ----------------------------- |
| `dim_`    | Dimension tables | `dim_customer`, `dim_product` |
| `fact_`   | Fact tables      | `fact_sales`                  |
| `report_` | Reporting tables | `report_sales_monthly`        |

---

## Column Naming Conventions

### Surrogate Keys

* Use suffix `_key` for all surrogate primary keys in dimension tables.
* Example: `customer_key` in `dim_customers`.

### Technical Columns

* Prefix with `dwh_` for system-generated metadata columns.
* Example: `dwh_load_date` for load timestamp.

---

##Load Naming Conventions

* Use prefix `load_` followed by the data warehouse layer name.
* Examples:

  * `load_bronze` — Load data into Bronze layer
  * `load_silver` — Load data into Silver layer
  * `load_gold` — Load data into Gold layer

---
