----------------------------------------------------RFM SOCRES OF SUPPLY CHAIN ------------------------------------------------------

use Finall_test_Lv2_BI40

select *
from US_Regional_Sales_Cleaned_Data

with RFM as(
    select
        CustomerID,
        MIN(DATEDIFF(Day,DeliveryDate,'2021-02-02')) as Recency,
        COUNT(distinct OrderNumber) as Frequency,
        round(Sum(Revenue),4) as Monetary
    from US_Regional_Sales_Cleaned_Data
    group by CustomerID
),
    R_Score as (
SELECT *,
case
    when Recency >= 0 and Recency <= 7 then 5
    when Recency >= 8 and Recency <= 15 then 4
    when Recency >= 16 and Recency <= 23 then 3
    when Recency >= 24 and Recency <= 31 then 2
    when Recency >= 32 and Recency <= 39 then 1
end as R_Score
from RFM
),
    F_Score as (
select *,
case
    when Frequency >= 135 and Frequency <= 150  then 1
    when Frequency >= 151 and Frequency <= 166 then 2
    when Frequency >= 167 and Frequency <= 182 then 3
    when Frequency >= 183 and Frequency <= 198 then 4
    when Frequency >= 199 and Frequency <= 214 then 5
end as F_Score
from R_Score
),
    M_Score as (
    select *,
case
    when Monetary >= 1173497.24 and Monetary < 1340756.942  then 1
    when Monetary >= 1340756.942 and Monetary < 1508016.644 then 2
    when Monetary >= 1508016.644 and Monetary < 1675276.346 then 3
    when Monetary >= 1675276.346 and Monetary < 1842536.048 then 4
    when Monetary >= 1842536.048 and Monetary <= 2009795.75 then 5
end as M_Score
from F_Score
),
    RFM_Score as (
    select *, 
    CONCAT_WS('',R_score,F_Score,M_Score) as RFM_Score
from M_Score
)
select *,
case
    when RFM_Score >= 111 and RFM_Score <= 151 then 'Lost Customers'
    when RFM_Score >= 152 and RFM_Score <= 192 then 'Hibernating customers'
    when RFM_Score >= 193 and RFM_Score <= 233 then 'Cannot Lose Them'
    when RFM_Score >= 234 and RFM_Score <= 274 then 'At Risk'
    when RFM_Score >= 275 and RFM_Score <= 315 then 'About To Sleep'
    when RFM_Score >= 316 and RFM_Score <= 356 then 'Need Attention'
    when RFM_Score >= 357 and RFM_Score <= 397 then 'New Customers'
    when RFM_Score >= 398 and RFM_Score <= 438 then 'Promising'
    when RFM_Score >= 439 and RFM_Score <= 479 then 'Potential Loyalist'
    when RFM_Score >= 480 and RFM_Score <= 520 then 'Loyal'
    when RFM_Score >= 521 and RFM_Score <= 561 then 'Champions'
end as Segment
from RFM_Score

----------------------------------------------------COHORT OF SUPPLY CHAIN GROUP BY SALES_CHANNEL  ------------------------------------------------------
select *
from US_Regional_Sales_Cleaned_Data
where year(OrderDate) = 2020
---------------------------------------------------------------Theo tháng của các Stores năm 2020
with min_order_month_table as (
    select CustomerID,StoreID, min(month(OrderDate)) as order_month_min
    from US_Regional_Sales_Cleaned_Data
    where year(OrderDate) = 2020
    group by CustomerID,StoreID
),
distinct_Customerid_ordermonth_table as(
    select distinct CustomerID, month(OrderDate) as order_month
    from US_Regional_Sales_Cleaned_Data
        where year(OrderDate) = 2020
),
Final_raw as (select a.*, (order_month - order_month_min) as month_order_diff
from min_order_month_table a left join distinct_Customerid_ordermonth_table b on a.CustomerID = b.CustomerID
)
select order_month_min, StoreID,
    count(distinct CustomerID) as Customer_count,
    count(case when month_order_diff = 1 then CustomerID end) as Month_1,
    count(case when month_order_diff = 2 then CustomerID end) as Month_2,
    count(case when month_order_diff = 3 then CustomerID end) as Month_3,
    count(case when month_order_diff = 4 then CustomerID end) as Month_4,
    count(case when month_order_diff = 5 then CustomerID end) as Month_5,
    count(case when month_order_diff = 6 then CustomerID end) as Month_6,
    count(case when month_order_diff = 7 then CustomerID end) as Month_7,
    count(case when month_order_diff = 8 then CustomerID end) as Month_8,
    count(case when month_order_diff = 9 then CustomerID end) as Month_9,
    count(case when month_order_diff = 10 then CustomerID end) as Month_10,
    count(case when month_order_diff = 11 then CustomerID end) as Month_11,
    count(case when month_order_diff = 12 then CustomerID end) as Month_12
from Final_raw
group by order_month_min, StoreID
order by order_month_min ASC


---------------------------------------------------------------Theo tháng của các Channels năm 2020
with min_order_month_table as (
    select CustomerID,Sales_Channel, min(month(DeliveryDate)) as order_month_min
    from US_Regional_Sales_Cleaned_Data
    where year(DeliveryDate) = 2020
    group by CustomerID, Sales_Channel
),
distinct_Customerid_ordermonth_table as(
    select distinct CustomerID, month(DeliveryDate) as order_month
    from US_Regional_Sales_Cleaned_Data
        where year(DeliveryDate) = 2020
),
Final_raw as (select a.*, (order_month - order_month_min) as month_order_diff
from min_order_month_table a left join distinct_Customerid_ordermonth_table b on a.CustomerID = b.CustomerID
)
select order_month_min, Sales_Channel,
    count(distinct CustomerID) as Customer_count,
    count(case when month_order_diff = 1 then CustomerID end) as Month_1,
    count(case when month_order_diff = 2 then CustomerID end) as Month_2,
    count(case when month_order_diff = 3 then CustomerID end) as Month_3,
    count(case when month_order_diff = 4 then CustomerID end) as Month_4,
    count(case when month_order_diff = 5 then CustomerID end) as Month_5,
    count(case when month_order_diff = 6 then CustomerID end) as Month_6,
    count(case when month_order_diff = 7 then CustomerID end) as Month_7,
    count(case when month_order_diff = 8 then CustomerID end) as Month_8,
    count(case when month_order_diff = 9 then CustomerID end) as Month_9,
    count(case when month_order_diff = 10 then CustomerID end) as Month_10,
    count(case when month_order_diff = 11 then CustomerID end) as Month_11,
    count(case when month_order_diff = 12 then CustomerID end) as Month_12
from Final_raw
group by order_month_min, Sales_Channel
order by order_month_min ASC



























-----------------------------------------------------------------In-Store----------------------------------------------
with min_order_month_table as (
    select CustomerID, Sales_Channel, min(month(OrderDate)) as order_month_min
    from US_Regional_Sales_Cleaned_Data
    where year(OrderDate) = 2020 and Sales_Channel = 'In-Store'
    group by CustomerID, Sales_Channel
),
distinct_Customerid_ordermonth_table as(
    select distinct CustomerID, Sales_Channel, month(OrderDate) order_month
    from US_Regional_Sales_Cleaned_Data
    where year(OrderDate) = 2020 and Sales_Channel = 'In-Store'
),
Final_raw_InStore as (select a.*, order_month - order_month_min as month_order_diff
from min_order_month_table a left join distinct_Customerid_ordermonth_table b on a.CustomerID = b.CustomerID
)
select order_month_min, Sales_Channel,
    count(distinct CustomerID) as Customer_count,
    count(case when month_order_diff = 1 then CustomerID end) as Month_1,
    count(case when month_order_diff = 2 then CustomerID end) as Month_2,
    count(case when month_order_diff = 3 then CustomerID end) as Month_3,
    count(case when month_order_diff = 4 then CustomerID end) as Month_4,
    count(case when month_order_diff = 5 then CustomerID end) as Month_5,
    count(case when month_order_diff = 6 then CustomerID end) as Month_6,
    count(case when month_order_diff = 7 then CustomerID end) as Month_7,
    count(case when month_order_diff = 8 then CustomerID end) as Month_8,
    count(case when month_order_diff = 9 then CustomerID end) as Month_9,
    count(case when month_order_diff = 10 then CustomerID end) as Month_10,
    count(case when month_order_diff = 11 then CustomerID end) as Month_11,
    count(case when month_order_diff = 12 then CustomerID end) as Month_12
from Final_raw_InStore
group by order_month_min, Sales_Channel
order by order_month_min ASC

-----------------------------------------------------------------Online----------------------------------------------
with min_order_month_table as (
    select CustomerID, Sales_Channel, min(month(OrderDate)) as order_month_min
    from US_Regional_Sales_Cleaned_Data
    where year(OrderDate) = 2020 and Sales_Channel = 'Online'
    group by CustomerID, Sales_Channel
),
distinct_Customerid_ordermonth_table as(
    select distinct CustomerID, Sales_Channel, month(OrderDate) order_month
    from US_Regional_Sales_Cleaned_Data
    where year(OrderDate) = 2020 and Sales_Channel = 'Online'
),
Final_raw_Online as (select a.*, order_month - order_month_min as month_order_diff
from min_order_month_table a left join distinct_Customerid_ordermonth_table b on a.CustomerID = b.CustomerID
)
select order_month_min, Sales_Channel,
    count(distinct CustomerID) as Customer_count,
    count(case when month_order_diff = 1 then CustomerID end) as Month_1,
    count(case when month_order_diff = 2 then CustomerID end) as Month_2,
    count(case when month_order_diff = 3 then CustomerID end) as Month_3,
    count(case when month_order_diff = 4 then CustomerID end) as Month_4,
    count(case when month_order_diff = 5 then CustomerID end) as Month_5,
    count(case when month_order_diff = 6 then CustomerID end) as Month_6,
    count(case when month_order_diff = 7 then CustomerID end) as Month_7,
    count(case when month_order_diff = 8 then CustomerID end) as Month_8,
    count(case when month_order_diff = 9 then CustomerID end) as Month_9,
    count(case when month_order_diff = 10 then CustomerID end) as Month_10,
    count(case when month_order_diff = 11 then CustomerID end) as Month_11,
    count(case when month_order_diff = 12 then CustomerID end) as Month_12
from Final_raw_Online
group by order_month_min, Sales_Channel
order by order_month_min ASC

-----------------------------------------------------------------Distributor----------------------------------------------
with min_order_month_table as (
    select CustomerID, Sales_Channel, min(month(OrderDate)) as order_month_min
    from US_Regional_Sales_Cleaned_Data
    where year(OrderDate) = 2020 and Sales_Channel = 'Distributor'
    group by CustomerID, Sales_Channel
),
distinct_Customerid_ordermonth_table as(
    select distinct CustomerID, Sales_Channel, month(OrderDate) order_month
    from US_Regional_Sales_Cleaned_Data
    where year(OrderDate) = 2020 and Sales_Channel = 'Distributor'
),
Final_raw_Distributor as (select a.*, order_month - order_month_min as month_order_diff
from min_order_month_table a left join distinct_Customerid_ordermonth_table b on a.CustomerID = b.CustomerID
)
select order_month_min, Sales_Channel,
    count(distinct CustomerID) as Customer_count,
    count(case when month_order_diff = 1 then CustomerID end) as Month_1,
    count(case when month_order_diff = 2 then CustomerID end) as Month_2,
    count(case when month_order_diff = 3 then CustomerID end) as Month_3,
    count(case when month_order_diff = 4 then CustomerID end) as Month_4,
    count(case when month_order_diff = 5 then CustomerID end) as Month_5,
    count(case when month_order_diff = 6 then CustomerID end) as Month_6,
    count(case when month_order_diff = 7 then CustomerID end) as Month_7,
    count(case when month_order_diff = 8 then CustomerID end) as Month_8,
    count(case when month_order_diff = 9 then CustomerID end) as Month_9,
    count(case when month_order_diff = 10 then CustomerID end) as Month_10,
    count(case when month_order_diff = 11 then CustomerID end) as Month_11,
    count(case when month_order_diff = 12 then CustomerID end) as Month_12
from Final_raw_Distributor
group by order_month_min, Sales_Channel
order by order_month_min ASC

-----------------------------------------------------------------Wholesale----------------------------------------------
with min_order_month_table as (
    select CustomerID, Sales_Channel, min(month(OrderDate)) as order_month_min
    from US_Regional_Sales_Cleaned_Data
    where year(OrderDate) = 2020 and Sales_Channel = 'Wholesale'
    group by CustomerID, Sales_Channel
),
distinct_Customerid_ordermonth_table as(
    select distinct CustomerID, Sales_Channel, month(OrderDate) order_month
    from US_Regional_Sales_Cleaned_Data
    where year(OrderDate) = 2020 and Sales_Channel = 'Wholesale'
),
Final_raw_Wholesale as (select a.*, order_month - order_month_min as month_order_diff
from min_order_month_table a left join distinct_Customerid_ordermonth_table b on a.CustomerID = b.CustomerID
)
select order_month_min, Sales_Channel,
    count(distinct CustomerID) as Customer_count,
    count(case when month_order_diff = 1 then CustomerID end) as Month_1,
    count(case when month_order_diff = 2 then CustomerID end) as Month_2,
    count(case when month_order_diff = 3 then CustomerID end) as Month_3,
    count(case when month_order_diff = 4 then CustomerID end) as Month_4,
    count(case when month_order_diff = 5 then CustomerID end) as Month_5,
    count(case when month_order_diff = 6 then CustomerID end) as Month_6,
    count(case when month_order_diff = 7 then CustomerID end) as Month_7,
    count(case when month_order_diff = 8 then CustomerID end) as Month_8,
    count(case when month_order_diff = 9 then CustomerID end) as Month_9,
    count(case when month_order_diff = 10 then CustomerID end) as Month_10,
    count(case when month_order_diff = 11 then CustomerID end) as Month_11,
    count(case when month_order_diff = 12 then CustomerID end) as Month_12
from Final_raw_Wholesale
group by order_month_min, Sales_Channel
order by order_month_min ASC
