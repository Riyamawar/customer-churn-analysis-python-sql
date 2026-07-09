CREATE DATABASE churn_analysis;
USE churn_analysis;

SHOW TABLES;

# Query 1: Total Customers
-- How many customers are present after data cleaning? 
SELECT COUNT(*) AS Total_Customers
FROM cleaned_churn;
# Observation: 
# The cleaned dataset contains 7,032 customer records.
# Business Insight:
# The cleaned dataset contains 7,032 valid customer records, providing a reliable foundation for customer churn analysis.


# Query 2: Overall Customer Churn
-- How many customers stayed and how many churned? 
SELECT Churn,
       COUNT(*) AS Total_Customers
FROM cleaned_churn
GROUP BY Churn;
# Observation:
# Out of 7,032 customers, 5,163 customers remained with the company, while 1,869 customers churned.
# Business Insight:
# Although most customers stayed with the company, a significant number churned, highlighting the need for effective customer retention strategies.


# Query 3: Customer Churn by Contract Type
-- How does customer churn vary across different contract types?
SELECT Contract,
       Churn,
       COUNT(*) AS Total_Customers
FROM cleaned_churn
GROUP BY Contract, Churn
ORDER BY Contract;
# Observation:
# Customers with month-to-month contracts have the highest number of churn cases (1,655), while one-year (166) and two-year (48) contracts have significantly lower churn.
# Business Insight:
# Customers with month-to-month contracts are more likely to churn, while long-term contracts help improve customer retention.


# Query 4: Average Monthly Charges
-- What is the average monthly charge of all customers?
SELECT ROUND(AVG(MonthlyCharges), 2) AS Average_Monthly_Charges
FROM cleaned_churn;
# Observation:
# The average monthly charge of all customers is $64.80 per month.
# Business Insight:
# The average monthly charge provides a benchmark for evaluating customer spending and identifying customers with unusually high or low bills.


# Query 5: Average Monthly Charges by Churn Status
-- Do customers who churn pay higher monthly charges than those who stay?
SELECT Churn,
       ROUND(AVG(MonthlyCharges), 2) AS Average_Monthly_Charges
FROM cleaned_churn
GROUP BY Churn;
# Observation:
# Customers who churned paid an average monthly charge of $74.44, while customers who stayed paid an average monthly charge of $61.31.
# Business Insight:
# Customers who churn pay higher monthly charges on average, suggesting that pricing may influence customer retention.


# Query 6: Average Tenure by Churn Status
-- How does the average tenure differ between churned and retained customers?
SELECT Churn,
       ROUND(AVG(tenure), 2) AS Average_Tenure
FROM cleaned_churn
GROUP BY Churn;
# Observation:
# Customers who stayed with the company had an average tenure of 37.65 months, whereas customers who churned had an average tenure of only 17.98 months.
# Business Insight:
# Customers with longer tenure are more likely to stay, indicating that customer loyalty increases over time.


# Query 7: Average Monthly Charges by Contract Type
-- Which contract type has the highest average monthly charges?
SELECT Contract,
       ROUND(AVG(MonthlyCharges), 2) AS Avg_Monthly_Charges
FROM cleaned_churn
GROUP BY Contract
ORDER BY Avg_Monthly_Charges DESC;
# Observation:
# The Month-to-month contract has the highest average monthly charge ($66.40), followed by the One year contract ($65.08). The Two year contract has the lowest average monthly charge ($60.87).
# Business Insight:
# Month-to-month customers have the highest average monthly charges, which may contribute to their higher churn compared to long-term contract customers.


# Query 8: Top 10 Customers by Total Charges
-- Which 10 customers have paid the highest total charges?
SELECT customerID,
       TotalCharges
FROM cleaned_churn
ORDER BY TotalCharges DESC
LIMIT 10;
# Observation:
# The top 10 customers have total charges ranging from $8,477.70 to $8,684.80. Customer ID 2889-FPWRM has the highest total charges at $8,684.80.
# Business Insight:
# The top-paying customers contribute significantly to company revenue and should be prioritized through loyalty programs and personalized retention efforts.


# Query 9: Average Monthly Charges by Payment Method
-- Which payment method has the highest average monthly charges?
SELECT PaymentMethod,
       ROUND(AVG(MonthlyCharges), 2) AS Avg_Monthly_Charges
FROM cleaned_churn
GROUP BY PaymentMethod
ORDER BY Avg_Monthly_Charges DESC;
# Observation:
# Electronic check has the highest average monthly charge ($76.26), followed by Bank transfer (automatic) ($67.21) and Credit card (automatic) ($66.52). Mailed check has the lowest average monthly charge ($43.96).
# Business Insight:
# Customers using Electronic check pay the highest monthly charges. Since Electronic check users also showed higher churn in the earlier analysis, the company should consider offering incentives to encourage automatic payment methods and improve customer retention.



# Query 10: Overall Customer Churn Rate
-- What is the overall customer churn rate (%)?
SELECT
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate_Percentage
FROM cleaned_churn;
# Observation:
# The overall customer churn rate is 26.58%.
# Business Insight:
# The churn rate indicates the percentage of customers who left the company. A high churn rate suggests that the company should focus on improving customer retention through better pricing, customer support, and long-term contract incentives.


# Query 11: Rank Customers by Total Charges
-- Which customers have paid the highest total charges?
SELECT customerID,
       TotalCharges,
       RANK() OVER (ORDER BY TotalCharges DESC) AS Customer_Rank
FROM cleaned_churn;
# Observation:
# Customers are ranked based on their total charges. Customer ID 2889-FPWRM ranks first with the highest total charges of $8,684.80, followed by customer 7569-NMZYQ with $8,672.45.
# Business Insight:
# Ranking customers by total charges helps identify high-value customers. These customers contribute significantly to the company's revenue and should be prioritized with loyalty programs and personalized retention strategies.


# Query 12: Rank Customers Within Each Contract Type
-- Which customers have the highest total charges within each contract type?
SELECT customerID,
       Contract,
       TotalCharges,
       RANK() OVER (
           PARTITION BY Contract
           ORDER BY TotalCharges DESC
       ) AS Contract_Rank
FROM cleaned_churn;
# Observation:
# Customers are ranked separately within each contract type based on their total charges. For the Month-to-month contract, customer 9481-IFBZY ranks first with total charges of $8,061.50.
# Business Insight:
# Ranking customers within each contract type helps identify the highest-value customers in each segment. This enables the company to design targeted retention strategies and personalized offers based on contract type.
