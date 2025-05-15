SELECT
  "order_id",
  "customer_id",
  "order_date",
  "product_name",
  "quantity",
  "unit_price",
  "total_price",
  CASE
    WHEN "total_price" >500 THEN 'big'
    WHEN "total_price" <=500 AND "total_price" > 300 THEN 'medium'
    WHEN "total_price" <= 300 THEN 'small'
  END AS Category
FROM
  M_LANDING.ORDERS
