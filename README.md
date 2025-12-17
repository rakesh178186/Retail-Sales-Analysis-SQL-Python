# Retail-Sales-Analysis-SQL-Python
Retail sales analysis project using MySQL and Python (pandas, matplotlib, seaborn) on Sample Superstore data. Includes SQL queries, Jupyter notebook visualizations, and business insights for data analyst portfolio.

# Retail Sales Analysis using SQL and Python

## Project Overview
This project analyzes a Sample Superstore retail dataset to understand sales performance, profitability, discount impact, customer segments, and regional trends.  
It uses MySQL for data storage and SQL querying, and Python (pandas, matplotlib, seaborn) for data exploration and visualization. The goal is to demonstrate end‑to‑end data analytics skills suitable for a data analyst portfolio.

## Dataset
- **Source**: Public Sample Superstore retail sales dataset (commonly used for analytics practice).  
- **Structure**: Transactional order‑level data across multiple years.  
- **Key fields**:  
  - Dates: `Order_Date`, `Ship_Date`  
  - Customer: `Customer_ID`, `Customer_Name`, `Segment`  
  - Geography: `Country`, `Region`, `State`, `City`  
  - Product: `Category`, `Sub_Category`, `Product_ID`, `Product_Name`  
  - Metrics: `Sales`, `Quantity`, `Discount`, `Profit`


## Tech Stack
- **Database**: MySQL  
- **Language**: Python 3 (pandas, matplotlib, seaborn)  
- **Tools**: VS Code, Jupyter Notebook  
- **OS**: Windows
## Repository Structure

```text
Retail-Sales-Analysis-SQL-Python/
├── sql/
│   ├── schema.sql
│   ├── 01_basic_metrics.sql
│   ├── 02_customer_analysis.sql
│   ├── 03_product_analysis.sql
│   ├── 04_discount_analysis.sql
│   └── 05_region_shipping.sql
├── notebooks/
│   └── notebook.ipynb
└── README.md
```

## SQL Analysis

The SQL layer focuses on answering core business questions for a retail store:

- **Basic metrics & time trends**  
  - Total orders, total sales, total profit  
  - Monthly and yearly sales and profit using `DATE_FORMAT` and `GROUP BY`  

- **Customer analysis**  
  - Top customers by sales and profit  
  - Average order value by customer segment  
  - Customer lifetime revenue based on aggregated sales

- **Product and category performance**  
  - Top 10 products by sales  
  - Sales and profit by category and sub‑category  
  - Identification of loss‑making sub‑categories and products

- **Discount impact**  
  - Discount bands (0%, 0–20%, 21–40%, >40%) vs average profit  
  - High‑discount orders with negative profit

- **Region and shipping**  
  - Sales by region and customer segment  
  - Average shipping days by ship mode using `DATEDIFF(Ship_Date, Order_Date)`

Each group of queries is stored in its own `.sql` file under `/sql` for easy reuse.

## Python Analysis & Visualizations

The Python notebook connects to MySQL, runs the SQL queries, loads results into pandas DataFrames, and builds visualizations:

- **Monthly sales trend**  
  - Line plot of monthly sales and profit to reveal seasonality and peak months.

- **Yearly sales and profit**  
  - Bar or combined bar/line chart showing how revenue and profit evolve from 2018–2021.

- **Top 10 products by sales**  
  - Horizontal bar chart highlighting key revenue‑generating products.

- **Sales by region and segment**  
  - Grouped bar chart comparing performance across regions and customer segments.

- **Profit by sub‑category**  
  - Bar chart showing which sub‑categories are highly profitable and which are loss‑making.

- **Discount band vs average profit**  
  - Bar chart of discount ranges against average profit to quantify the effect of heavy discounting.

- **Shipping time by ship mode**  
  - Bar chart of average shipping days per mode to compare operational performance.

- **Order value distribution**  
  - Histogram of order values to understand basket size distribution and revenue concentration.

- **Sales vs profit by category**  
  - Scatter plot with `Sales` on the x‑axis and `Profit` on the y‑axis, colored by category, to reveal high‑sale low‑profit patterns.

- **Correlation between key metrics**  
  - Heatmap of correlations for Sales, Quantity, Discount, and Profit to summarize numeric relationships.

The notebook includes markdown sections describing each question, approach, and insight.

## Key Insights

Some of the main findings from the analysis:

- Sales and profit increase steadily from 2018 to 2021, with clear monthly seasonality and peaks towards the end of each year.  
- A small set of products and sub‑categories contributes a large share of total revenue and profit, indicating where inventory and marketing should focus.  
- Certain regions and the Consumer segment generate the highest sales, while others lag and may need targeted strategies.  
- High discount bands (above 40%) are associated with significantly lower or negative average profit, suggesting that aggressive discounting is not sustainable.  
- Standard Class shipping has the longest delivery time, while Same Day and First Class provide faster service at potentially higher cost.  
- Correlation and scatter analyses confirm that higher discounts are negatively correlated with profit, while sales and profit remain positively related within reasonable discount levels.


## How to Run the Project

1. **Clone the repository**

2. **Set up MySQL database**

- Create a database, for example `superstore_db`.  
- Run `sql/schema.sql` to create the `orders` table.  
- Import the Sample Superstore dataset (Orders sheet) into the `orders` table using MySQL Workbench or any import tool.

3. **Create Python environment**

```
python -m venv venv
venv\Scripts\activate  # Windows
pip install pandas mysql-connector-python matplotlib seaborn
```

4. **Update connection details**

- Open `notebooks/notebook.ipynb`.  
- In the first cell, update `host`, `user`, `password`, and `database` to match your MySQL setup.

5. **Run the notebook**

- Start Jupyter inside VS Code or with `jupyter notebook`.  
- Run all cells to reproduce the analysis and visualizations.

## Project Purpose

This project is designed as a portfolio piece for data analyst roles in 2025, demonstrating practical skills in:

- Writing efficient SQL to answer real business questions  
- Using Python for data analysis and visualization  
- Communicating insights clearly with documentation and charts  
- Working end‑to‑end from raw data to business recommendations.
