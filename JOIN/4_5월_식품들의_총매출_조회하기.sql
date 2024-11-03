select o.PRODUCT_ID, p.PRODUCT_NAME, sum(o.amount * p.price) as TOTAL_SALES
from food_order as o
join food_product as p
on o.product_id = p.product_id
where o.produce_date like "2022-05%"
group by o.product_id
order by TOTAL_SALES desc, o.product_id;