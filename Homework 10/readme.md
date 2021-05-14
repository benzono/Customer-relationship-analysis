# Analysis of customer behaviors 
![header](https://img.shields.io/badge/-Big--Query-blue) ![header](https://img.shields.io/badge/-Data--Studio-blue) 

## Dataset
The given supermarket dataset from the instructor contains order transactions at item level.  

## Customer definition
We will define the customers into 5 groups by their purchased historical as below.

| Customer group  | Purchase in current month  | Purchase in previous month  | Last purchase more than 3 months  |  
| ------------- | :-------------: | :-------------: | :-------------: | 
| Repeated buyer  | :heavy_check_mark:  | :heavy_check_mark:  | :x:  |  
| Reactivated buyer  | :heavy_check_mark:  | :x:  | :heavy_check_mark: |   
| New buyer  | :heavy_check_mark:  | :x:  | :x:  |   
| Churn buyer(1 Month)  | :x:  | :heavy_check_mark:  | :x:  |   
| Churn buyer(M 3 Month)  | :x:  | :x:  | :heavy_check_mark:  |   

## Data preparation 
Import data to BigQuery database and prepare the data set by using only SQL language.  
**SQL preparing query :** [customer-movrment-query.sql](https://github.com/benzono/BADS7105/blob/main/Homework%2010/customer-movrment-query.sql) 

## Data visualization
When we finish to prepare the data.  Visualization will help us to understand more on customer behaviors.  
As we prepare the data on BigQuery, we can directly connect the query result to **Data studio** to visualize as below.  
  
![image](https://github.com/benzono/BADS7105/blob/main/Homework%2010/Data_studio_customer_movement_analysis_visualization.jpg)
