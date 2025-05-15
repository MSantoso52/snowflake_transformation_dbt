SELECT
  O."order_id",
  O."customer_id",
  O."order_date",
  O."product_name",
  O."quantity",
  O."unit_price",
  O."total_price",
  COUNT(DISTINCT O."order_id") AS ORDERCOUNT,
  SUM(OI."item_total_price") AS Revenue
FROM
  {{ ref('orders_stg') }} O
JOIN
  {{ ref('orderitems_stg') }} OI ON O."order_id"=OI."order_id"
GROUP BY
  O."order_id",
  O."customer_id",
  O."order_date",
  O."product_name",
  O."quantity",
  O."unit_price",
  O."total_price"
ORDER BY
  Revenue DESC

