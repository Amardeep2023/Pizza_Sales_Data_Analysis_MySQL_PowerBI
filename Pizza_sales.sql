select*from pizza2 (
select count(distinct order_id) as total_order from pizza2
select SUM(total_price) as Grand from pizza2
select SUM(total_price)/count(distinct order_id) as Average from pizza2
select SUM(quantity) as Total_pizza_sold from pizza2
select COUNT(distinct order_id) as Total_pizza_sold from pizza2
select cast(SUM(quantity) as decimal(10,2))/cast(count(distinct order_id) as decimal(10,2)) as average_Orders from pizza2
select pizza_category,sum(total_price) as Total_sales, sum(total_price)*100/(select sum(total_price) from pizza2 where month(order_date)=1) as PCT
from pizza2
where month(order_date)=1
group by pizza_category

select  pizza_name,sum(quantity) as Total_quantity from pizza2
group by pizza_name
order by Total_quantity desc
limit 5



)
