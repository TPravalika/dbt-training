--select productid,PRODUCTNAME,category,SUBCATEGORY,sum(ORDERSPROFIT) as PROFIT_on_product
--from {{ ref('stg_orders') }}
--group by productid,PRODUCTNAME,category,SUBCATEGORY



select
productid,
productname,
category,
subcategory,
sum(orderprofit) as profit
from {{ ref('stg_orders') }}
group by
productid,
productname,
category,
subcategory
