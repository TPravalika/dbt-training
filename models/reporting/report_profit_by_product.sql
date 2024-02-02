select productid,PRODUCTNAME,category,SUBCATEGORY,sum(ORDERSPROFIT) as PROFIT_on_product
from {{ ref('stg_orders') }}
group by productid,PRODUCTNAME,category,SUBCATEGORY