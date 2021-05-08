#Transform transaction date to monthly view
with transaction_date as (
    SELECT 
       distinct  
       CUST_CODE , 
       DATE_TRUNC(PARSE_DATE("%Y%m%d", cast(SHOP_DATE as STRING)), MONTH) as current_month_date
FROM `nida-workshop-308209.supermarket.transactions` 
WHERE CUST_CODE IS NOT NULL)

#Cross join date to have all customer data on a daily basis
, cross_date as (
select  distinct 
        EXTRACT(month FROM t1.month_date) as month
       , EXTRACT(year FROM t1.month_date) as year
       , t1.month_date
       , t2.CUST_CODE
       , FIRST_VALUE(t2.current_month_date) 
         OVER (PARTITION BY t1.month_date,t2.CUST_CODE ORDER BY t2.current_month_date desc) as last_transaction_date
from (
(select distinct current_month_date as month_date from transaction_date) t1 
cross join 
(select * from transaction_date) t2)
where t2.current_month_date <= t1.month_date)

#Lag mont to calculate the recency period (month)
, lag_month as (
select  * 
        , DATE_DIFF(month_date, last_transaction_date, Month) as current_date_month_diff
        , DATE_DIFF(last_transaction_date, previous_transaction_date, Month) as last_transaction_month_diff
from (
select *  ,
       LAG(last_transaction_date, 1) OVER (PARTITION BY CUST_CODE ORDER BY last_transaction_date asc) as previous_transaction_date,
from cross_date))

#Get data
select *
       , case when month_date = last_transaction_date and last_transaction_month_diff is null then 'New buyer'
              when month_date = last_transaction_date and last_transaction_month_diff = 1 then 'Repeated buyer'
              when month_date = last_transaction_date and last_transaction_month_diff > 1 then 'Reactivated buyer'
              when month_date != last_transaction_date and current_date_month_diff = 1 then 'Churn buyer (1 month)'
              when month_date != last_transaction_date and current_date_month_diff > 1 then 'Churn buyer (More than 1 month)'
         end as buyer_flag
       , case when month_date = last_transaction_date and last_transaction_month_diff is null then 1
              when month_date = last_transaction_date and last_transaction_month_diff = 1 then 1
              when month_date = last_transaction_date and last_transaction_month_diff > 1 then 1
              when month_date != last_transaction_date and current_date_month_diff = 1 then -1
              when month_date != last_transaction_date and current_date_month_diff > 1 then -1
         end as buyer_count
from lag_month
order by 3 desc , 4 , 5 desc 
