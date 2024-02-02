--select * ,ORDERSELLINGPRICE-ORDERCOSTPRICE as ordersprofit
--from {{ ref('raw_orders') }}
select
o.orderid,
o.orderdate,
o.shipdate,
o.shipmode,
o.ordercostprice,
o.ORDERSELLINGPRICE,
o.ORDERSELLINGPRICE-o.ORDERCOSTPRICE as ordersprofit,
p.productid,
p.CATEGORY,
p.PRODUCTNAME,
p.SUBCATEGORY,
c.CUSTOMERID,
c.CUSTOMERNAME,
c.SEGMENT,
c.COUNTRY,
c.STATE
from
 {{ ref('raw_orders') }}  o 
  left join {{ ref('raw_product') }}  p 
   on o.productid =p.productid
   left join {{ ref('raw_customer') }}  c 
   on c.customerid =c.customerid