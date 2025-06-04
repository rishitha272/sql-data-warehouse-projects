
# Data Catalog for Gold Layer

## Overview

The Gold Layer contains business-level data optimized for analytics and reporting. It includes dimension and fact tables representing core entities and transactional metrics.

---

### 1. **gold.dim\_customers**

* **Purpose:** Stores enriched customer information including demographics and geography.

| Column Name      | Data Type    | Description                                              |
| ---------------- | ------------ | -------------------------------------------------------- |
| customer\_key    | INT          | Surrogate key uniquely identifying each customer record. |
| customer\_id     | INT          | Unique numerical customer identifier.                    |
| customer\_number | NVARCHAR(50) | Alphanumeric customer code for tracking and reference.   |
| first\_name      | NVARCHAR(50) | Customer's first name.                                   |
| last\_name       | NVARCHAR(50) | Customer's last/family name.                             |
| country          | NVARCHAR(50) | Country of residence (e.g., 'Australia').                |
| marital\_status  | NVARCHAR(50) | Marital status (e.g., 'Married', 'Single').              |
| gender           | NVARCHAR(50) | Gender (e.g., 'Male', 'Female', 'n/a').                  |
| birthdate        | DATE         | Date of birth (YYYY-MM-DD).                              |
| create\_date     | DATE         | Record creation date in the system.                      |

---

### 2. **gold.dim\_products**

* **Purpose:** Contains product information with classification and attributes.

| Column Name           | Data Type    | Description                                                  |
| --------------------- | ------------ | ------------------------------------------------------------ |
| product\_key          | INT          | Surrogate key uniquely identifying each product record.      |
| product\_id           | INT          | Unique product identifier for tracking.                      |
| product\_number       | NVARCHAR(50) | Alphanumeric product code for categorization or inventory.   |
| product\_name         | NVARCHAR(50) | Descriptive product name (type, color, size).                |
| category\_id          | NVARCHAR(50) | Identifier for the product's category.                       |
| category              | NVARCHAR(50) | High-level product classification (e.g., Bikes, Components). |
| subcategory           | NVARCHAR(50) | Detailed product classification within category.             |
| maintenance\_required | NVARCHAR(50) | Indicates if maintenance is required ('Yes', 'No').          |
| cost                  | INT          | Cost or base price in monetary units.                        |
| product\_line         | NVARCHAR(50) | Product line or series (e.g., Road, Mountain).               |
| start\_date           | DATE         | Date product became available for sale/use.                  |

---

### 3. **gold.fact\_sales**

* **Purpose:** Stores transactional sales data for analysis.

| Column Name    | Data Type    | Description                                                            |
| -------------- | ------------ | ---------------------------------------------------------------------- |
| order\_number  | NVARCHAR(50) | Unique alphanumeric identifier for each sales order (e.g., 'SO54496'). |
| product\_key   | INT          | Surrogate key linking to product dimension.                            |
| customer\_key  | INT          | Surrogate key linking to customer dimension.                           |
| order\_date    | DATE         | Date the order was placed.                                             |
| shipping\_date | DATE         | Date the order was shipped.                                            |
| due\_date      | DATE         | Payment due date for the order.                                        |
| sales\_amount  | INT          | Total sales amount for the line item, in whole currency units.         |
| quantity       | INT          | Quantity of units ordered.                                             |
| price          | INT          | Price per unit for the line item, in whole currency units.             |

---

