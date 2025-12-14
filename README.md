
# Sales Analysis




## 1. Executive Summary

Using **SQL** and **Power BI**, I analyzed retail sales data from the **Global Superstore** dataset to understand revenue drivers, product profitability, regional performance, and customer behavior.

The project focuses on identifying **what drives profit**, **where performance drops**, and **which actions can improve business outcomes**. The final output is an interactive Power BI dashboard that enables stakeholders to self-serve insights across sales, products, regions, and customers.

**Key outcomes from the analysis:**

- Identified categories and products driving the majority of profit
- Highlighted margin erosion caused by excessive discounting
- Surfaced regional performance gaps and delivery delays
- Segmented customers by value and retention behavior
- Delivered actionable recommendations to improve profitability and retention

## 2. Business Problem
Retail stakeholders need visibility into **sales performance**, **profitability**, and **customer behavior**, but raw transactional data makes it difficult to answer questions such as:

- Which products and categories truly drive profit?
- Are discounts hurting margins?
- Which regions are underperforming?
- How do delivery delays impact customer retention?
- Which customer segments are most valuable long-term?

Without a centralized analytical view, decision-making becomes slow and reactive.

**Objective:**

Build a scalable, interactive dashboard that converts raw sales data into **clear insights and business actions**.
## 3. Methodology
1. **Data Extraction & Cleaning (SQL)**
- Loaded raw Superstore data into a staging table
- Removed duplicates and cleaned text fields
- Created derived columns for shipping delay, profit margin, and date attributes
2. **Data Modeling (Power BI)**
- Designed a clean **star schema**
- Created dedicated dimension tables (Customer, Product, Date, Region)
- Established optimized relationships for efficient DAX calculations
3. **Analysis & Visualization (Power BI)**
- Built KPIs and advanced DAX measures
- Designed three dashboard pages for executive, product, and customer insights
- Applied consistent UI/UX design principles
4. **Insight Generation**
- Interpreted trends and patterns
- Converted insights into clear business recommendations
## 4. Skills
**SQL**

- CTEs
- Window functions (`ROW_NUMBER`)
- Data cleaning & deduplication
- Computed columns
- Date functions

**Power BI**

- Data modeling (Star Schema)
- DAX measures & time intelligence
- KPI design
- Interactive dashboards
- Slicers, filters, and drill-downs

**Analytics Concepts**

- Profitability analysis
- Customer segmentation
- Cohort analysis
- Pareto (80/20) analysis
- Operational performance tracking
##  5. Results & Business Recommendations
**Key Findings**

- A small percentage of products contribute to the majority of revenue (Pareto effect)
- Furniture category shows high discounting with lower profit margins
- West region outperforms other regions in total profit
- Delivery delays vary significantly by shipping mode
- Medium-value customers represent a strong opportunity for CLV growth

**Recommendations**

- Increase conversion of **Medium-CLV customers** into **High-CLV customers** using targeted offers and retention strategies
- Optimize discounting policies for low-margin product categories
- Reduce delivery delays by improving shipping mode selection in high-impact regions
- Prioritize high-profit products for promotions instead of high-discount items
## 6. Next Steps
- Add customer-level demographics for deeper segmentation
- Introduce return reason analysis if data can be sourced
- Build predictive models for sales forecasting
- Implement RFM-based customer scoring
- Add scenario-based “What-If” analysis for pricing and discounts
## Project Assets
1. **SQL transformation scripts**

2. **Data model diagrams**

3. **Report screenshots**

<img width="1118" height="629" alt="Page 1" src="https://github.com/user-attachments/assets/066dadd9-e32c-4723-8dbd-73bcadd7e67a" />


<img width="1118" height="630" alt="Page 2" src="https://github.com/user-attachments/assets/0ad2e888-95a6-49a6-bb3b-97e616e3e3bf" />


<img width="1116" height="628" alt="Page 3" src="https://github.com/user-attachments/assets/0710a6e7-5297-4884-be11-0300c4a96c90" />


4. **Power BI Report(.pbix)**

[Sales Analysis.pbix]()

6. **Project Documentation**

   [Sales Analysis - Superstore.pdf](https://github.com/user-attachments/files/24149093/Sales.Analysis.-.Superstore.pdf)


