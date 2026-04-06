# ❄️ Snowflake (SNOW) SaaS Financial Model & Valuation

![Power BI](https://img.shields.io/badge/Data_Viz-Power_BI-yellow) ![SQL](https://img.shields.io/badge/Database-MySQL-blue) ![Excel](https://img.shields.io/badge/Modeling-Excel_FP%26A-green) ![Status](https://img.shields.io/badge/Status-Project_Complete-success)

## 🎯 Project Overview
This project is an **institutional-grade, bottoms-up financial valuation** and automated data pipeline for **Snowflake Inc. (NYSE: SNOW)**, projecting performance from **FY2026 to FY2031**. 

Unlike static models, this architecture integrates a **SQL-to-Power BI pipeline** to automate SaaS metric calculations and visualize unit economics, bridging the gap between raw data engineering and high-conviction equity research.

---

## 💡 Key Strategic Findings (As of April 2026)

| Metric | Value | Insight |
| :--- | :--- | :--- |
| **Intrinsic Value (Base Case)** | **$190 / share** | Calculated via 5-Year DCF (8.5% WACC). |
| **Current Market Price (CMP)** | **~$152** | Represents a **~20% Margin of Safety**. |
| **LTV / CAC Ratio** | **5.24x** | Elite-tier efficiency despite high upfront S&M. |
| **Net Revenue Retention** | **125%** | Proves robust "Land and Expand" durability. |
| **Rule of 40 Score** | **>50%** | Places SNOW in the top 1% of global SaaS assets. |

> **The Valuation Gap:** The model suggests the market has over-corrected on revenue deceleration concerns. By ignoring the **$9.77B RPO (Orderbook)** and AI-driven consumption tailwinds, the current market price offers a significant entry point for long-term investors.

---

## 🛠️ Technical Stack & Architecture

### **1. Database & ETL (MySQL)**
* **Data Normalization:** Migrated historical and projected financials from flat files to a relational schema.
* **Logic Layer:** Engineered **SQL Views** using CTEs and Window Functions (`LAG`, `LEAD`) to calculate SaaS KPIs at the source.
* **Automation:** Automated the unpivoting of 9 years of fiscal data to ensure a clean Star Schema for BI tools.

### **2. Financial Modeling (Excel)**
* **3-Statement Model:** Integrated Income Statement, Balance Sheet, and Cash Flow projections.
* **Valuation Engine:** 5-Year DCF with dynamic WACC and Terminal Growth sensitivity tables.
* **Cash Flow Optimization:** Modeled **Deferred Revenue** impact to capture the cash "float" inherent in Snowflake's enterprise consumption model.

### **3. Business Intelligence (Power BI)**
* **Executive Summary:** Real-time tracking of Rule of 40 and Sales Efficiency (Magic Number).
* **Revenue Quality:** Interactive analysis of RPO trends and growth deceleration curves.
* **Profitability Bridge:** Visualized the delta between GAAP losses and Non-GAAP profitability, isolating **Stock-Based Compensation (SBC)**.

---

## 📂 Repository Structure
| Component | Link | Description |
| :--- | :--- | :--- |
| **Database Scripts** | [📁 Sql_Scripts](./Sql_Scripts) | Automation of unpivoting and SaaS logic. |
| **Power BI Dashboard** | [📈 snowflake.pbix](./snowflake.pbix) | Interactive .pbix source file. |
| **Executive Summary** | [📑 Snowflake Saas.pdf](./Snowflake%20Saas.pdf) | 3-Page Executive Dashboard (PDF). |
| **Financial Model** | [📊 Excel Model](./Snowflake%20Saas%20Model%20and%20DCF.xlsx) | 3-Statement DCF and Sensitivity Analysis. |

---

## 📺 Technical Walkthrough
*

---

## 🖼️ Dashboard Preview
<img width="1272" height="702" alt="Snowflake dashboard" src="https://github.com/user-attachments/assets/51351c96-91c7-47ec-bf43-ecf91650df47" />


## 🛠️ Model Architecture & Methodology

The project follows a **Full-Stack Financial Engineering** framework, bridging the gap between traditional 3-statement modeling and modern data automation.

### **1. Data Transformation Layer (SQL & ETL)**
To ensure scalability and data integrity, I migrated the raw financial data into a relational **MySQL** environment:
* **Unpivot Automation:** Engineered **SQL Views** to transform 9 years of "wide" Excel data into "long" formats, enabling dynamic time-series analysis in Power BI.
* **Calculated Logic:** Offloaded compute-heavy SaaS metrics (Rule of 40, Magic Number, NRR) to the SQL layer using **CTEs and Window Functions** (`LAG`, `LEAD`).
* **Star Schema:** Developed a robust data model in Power BI, connecting the SQL Fact table to a dedicated `Dim_Date` dimension.

### **2. 3-Statement Projection (GAAP & Non-GAAP)**
* **Revenue Model:** Modeled a consumption-based revenue waterfall, projecting a deliberate deceleration from **~29% (FY26)** to **~16% (FY31)**.
* **Operating Leverage:** Built scenarios where R&D and S&M expenses decrease as a % of revenue as the platform matures, driving Non-GAAP Operating Margins to **26%**.
* **Cash Flow Dynamics:** Explicitly modeled the **Working Capital impact of Deferred Revenue**, capturing the massive cash "float" from Snowflake's $9.7B RPO (Orderbook).

### **3. SaaS Unit Economics (The "Engine")**
* **LTV / CAC:** Calculated at **5.24x**, proving that every $1 spent on acquisition generates over $5 in lifetime value.
* **Payback Period:** Modeled at **~50 months**. *Analysis:* This represents the characteristic "ramp" of a consumption model where costs are upfront but revenue scales with usage.
* **Retention (NRR):** Visualized a stabilized **125% Net Revenue Retention**, confirming that Snowflake's existing "Land and Expand" engine remains the primary growth driver.

### **4. Valuation & Sensitivity (DCF)**
* **Methodology:** 5-Year Discounted Cash Flow (DCF).
* **WACC:** 8.5% (Base) vs. 9.5% (Conservative).
* **Terminal Value:** 4.0% Perpetuity Growth rate.

---

## 📈 Key Scenarios

| Metric | Bear Case | **Base Case** | Bull Case |
| :--- | :--- | :--- | :--- |
| **Terminal Growth** | 3.0% | **4.0%** | 5.0% |
| **WACC** | 9.5% | **8.5%** | 7.5% |
| **Implied Price** | ~$154 | **~$190** | $250+ |
| **Margin of Safety** | 1% | **25%** | 65%+ |

> **Strategic Insight:** At the current market price of **~$152**, Snowflake is trading at its "Bear Case" valuation. My model suggests that any stabilization in revenue growth above 18% provides a significant upside catalyst toward the **$190** target.

---
| Component | Link | Description |
| :--- | :--- | :--- |
| **Database Scripts** | [📁 Sql_Scripts](./Sql_Scripts) | Automation of unpivoting and SaaS logic. |
| **Power BI Dashboard** | [📈 snowflake.pbix](./snowflake.pbix) | Interactive .pbix source file. |
| **Executive Summary** | [📑 Snowflake Saas.pdf](./Snowflake%20Saas.pdf) | 3-Page Executive Dashboard (PDF). |
| **Financial Model** | [📊 Excel Model](./Snowflake%20Saas%20Model%20and%20DCF.xlsx) | 3-Statement DCF and Sensitivity Analysis. |
