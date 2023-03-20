select customer_id,
name,
email,
min(created_at) as first_order_at,
count(ord.id) as number_of_orders
from `analytics-engineers-club.coffee_shop.customers` cus
left join  `analytics-engineers-club.coffee_shop.orders` ord
on cus.id = ord.customer_id
group by 1, 2, 3