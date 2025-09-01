SELECT
    store_id,
    store_name,
    store_city,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(product_quantity) AS total_units_sold,
    SUM(total_order_item_amount) AS total_sales_amount,
    AVG(total_order_item_amount) AS avg_order_item_amount,
    (SUM(total_order_item_amount) / NULLIF(COUNT(DISTINCT order_id),0)) AS avg_order_value
FROM {{ ref('int_localbike_sales_fact') }}
GROUP BY store_id, store_name, store_city