-- Which products sell the most? 
select Product_line, SUM(TOTAL) AS TOTAL_REVENUE
FROM walmart_sales
GROUP BY Product_line
ORDER BY TOTAL_REVENUE DESC;

-- Which cities generate more revenue? 

SELECT CITY,
sum(TOTAL) as total_sales
FROM walmart_sales
group by CITY
order by total_sales desc;

-- Are customers happy (ratings)? 
select round(avg(rating),2) as customer_rating
from walmart_sales;

-- Do Walmart members spend more than non-members? 
select customer_type, round(avg(total),2) as spending_by_customer
from walmart_sales
group by Customer_type;


--  Best performing city?
SELECT CITY,
sum(TOTAL) as total_sales
FROM walmart_sales
group by CITY
order by total_sales desc
limit 1;

-- Least performing city?
SELECT CITY,
sum(TOTAL) as total_sales
FROM walmart_sales
group by CITY
order by total_sales 
limit 1;

-- Top-Selling Product Line
select Product_line, SUM(TOTAL) AS TOTAL_REVENUE
FROM walmart_sales
GROUP BY Product_line
ORDER BY TOTAL_REVENUE DESC
limit 1;

-- Does Rating impact sales?
SELECT 
    Rating,
    AVG(Total) AS avg_sales
FROM 
    walmart_sales
GROUP BY 
    Rating
ORDER BY 
    Rating DESC;

-- Total Revenue
select sum(total) as Total_Revenue
from walmart_sales;