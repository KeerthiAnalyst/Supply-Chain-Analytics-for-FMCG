SELECT * FROM gds.customer;
SHOW databases;
USE gds;
show tables;
select*
from customer;
select count(customer_id)
from order_lines;
-- total order--_
select COUNT(ï»¿order_id)
from order_lines;
-- lifr--
SELECT COUNT(CASE WHEN `In Full` = 1 THEN 1 END)/count(*)*100  AS CountOfOnes
FROM order_lines;
-- vfr--
select round(sum(delivery_qty)/sum(order_qty)*100) as volume_fill_rate
from order_lines;
-- total orders --
select count(ï»¿order_id)
from orders_aggregate;
-- infull --
select count(case when `in_full`=1 then 1 end)/count(*)*100 As infull
from orders_aggregate;
-- ontime --
select count(case when `on_time` = 1 then 1 end)/count(*)*100 As ontime
from orders_aggregate;
-- otif--
select count(case when `otif`=1 then 1 end)/count(*)*100 as otif
from orders_aggregate;
-- avg of ontime target -- 
select avg(`ontime_target%`)as avg_ontime
from targets_orders;
-- avg of infull target --
select avg(`infull_target%`)as avg_infull
from targets_orders;
-- otif--
select avg(`otif_target%`)as avg_otif
from targets_orders;

