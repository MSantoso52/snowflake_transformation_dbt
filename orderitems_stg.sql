SELECT
  "order_item_id",
  "order_id",
  "item_name",
  "item_quantity" AS QUANTITY,
  "item_unit_price",
  "item_total_price"
FROM
  M_LANDING.ORDERITEMS
