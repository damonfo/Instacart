WITH 
    orders AS (
        select * from "INSTACART"."RAW"."RAW_ORDERS"
    ),
    order_products AS (
        select * from "INSTACART"."RAW"."RAW_ORDER_PRODUCTS__PRIOR"
    )
select
    a.*,
    b.product_id,
    b.add_to_cart_order,
    b.reordered
from 
    orders a
join order_products b
on a.order_id = b.order_id
where a.eval_set='prior'