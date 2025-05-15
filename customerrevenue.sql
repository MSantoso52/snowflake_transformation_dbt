SELECT
  OS."customer_id",
  C.customer_name,
  SUM(OS.ORDERCOUNT) AS ORDER_COUNT,
  SUM(OS.Revenue) AS REVENUE
FROM
  {{ ref('orders_fact') }} OS
JOIN
  {{ ref('customers_stg') }} C ON OS."customer_id"=C."customer_id"
GROUP BY
  OS."customer_id",
  C.customer_name
