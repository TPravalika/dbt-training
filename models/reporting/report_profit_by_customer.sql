select customerid,segment,country,sum(ORDERSPROFIT) 
from {{ ref('stg_orders') }}
group by customerid,segment,country