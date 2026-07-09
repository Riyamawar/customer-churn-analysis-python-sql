# customer-churn-analysis-python-sql
Analyzed 7,032 telecom customer records using Python and MySQL to identify churn patterns through EDA, SQL business queries, and actionable business insights.

# 📊 Customer Churn Analysis using Python & SQL

## 📌 Project Overview

Customer churn is one of the biggest challenges faced by subscription-based businesses. This project analyzes customer data to identify the key factors influencing churn and provides actionable business insights using Python and SQL.

The project combines Exploratory Data Analysis (EDA) with SQL-based business queries to understand customer behavior and support data-driven decision-making.

---

## 🎯 Objectives

- Analyze customer churn patterns.
- Identify factors affecting customer retention.
- Perform data cleaning and exploratory data analysis.
- Solve business problems using SQL.
- Generate business insights and recommendations.

---

## 📂 Dataset Information

- **Dataset:** Telco Customer Churn Dataset
- **Total Records:** 7,032 customers
- **Features:** 21 columns
- **Target Variable:** Churn (Yes/No)

---

## 🛠️ Tools & Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- MySQL
- Jupyter Notebook
- Git & GitHub

---

# 🧹 Data Cleaning

The following preprocessing steps were performed:

- Removed missing values.
- Converted data types where required.
- Cleaned the **TotalCharges** column.
- Checked for duplicate records.
- Verified data consistency.
- Exported the cleaned dataset for SQL analysis.

---

# 📈 Exploratory Data Analysis (Python)

Performed visual analysis on:

- Customer Churn Distribution
- Gender vs Churn
- Contract Type vs Churn
- Payment Method vs Churn
- Internet Service vs Churn
- Senior Citizen vs Churn
- Partner vs Churn
- Monthly Charges vs Churn
- Tenure vs Churn
- Correlation Heatmap

---

# 🗄️ SQL Business Analysis

The following business questions were answered using MySQL:

1. Total Customers
2. Overall Customer Churn
3. Customer Churn by Contract Type
4. Average Monthly Charges
5. Average Monthly Charges by Churn Status
6. Average Tenure by Churn Status
7. Average Monthly Charges by Contract Type
8. Top Customers by Total Charges
9. Average Monthly Charges by Payment Method
10. Overall Customer Churn Rate
11. Rank Customers by Total Charges *(Window Function)*
12. Rank Customers Within Each Contract Type *(Window Function)*

---

# 🔑 Key Findings

- The overall customer churn rate is **26.58%**.
- Customers with **month-to-month contracts** have the highest churn.
- Customers who churn pay **higher monthly charges** on average.
- Customers who remain with the company have a significantly **longer tenure**.
- **Electronic check** users have both the highest average monthly charges and higher churn.
- Long-term contracts (One Year and Two Year) show much better customer retention.
- High-value customers can be identified using SQL window functions.

---

# 💡 Business Recommendations

- Encourage customers to switch from month-to-month to long-term contracts.
- Offer discounts or loyalty rewards to customers with high monthly charges.
- Promote automatic payment methods to reduce churn.
- Focus retention campaigns on new customers with shorter tenure.
- Provide personalized offers for high-value customers.

---

# 📁 Project Structure

```
Customer-Churn-Analysis/
│
├── Churn_Analysis.ipynb
├── Customer_Churn_SQL.sql
├── cleaned_churn.csv
├── README.md
└── images/
```

---

# 🚀 Skills Demonstrated

- Data Cleaning
- Exploratory Data Analysis (EDA)
- Data Visualization
- SQL Queries
- Window Functions
- Business Analysis
- Customer Analytics
- Problem Solving

---

# 📌 Conclusion

This project demonstrates how Python and SQL can be combined to analyze customer behavior, identify churn patterns, and generate business insights. The findings can help organizations improve customer retention, reduce churn, and make data-driven business decisions.

---

## 👩‍💻 Author

**Riya Mawar**

- LinkedIn: https://www.linkedin.com/in/riya-mawar-609050388/
