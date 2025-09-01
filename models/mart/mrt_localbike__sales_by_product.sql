SELECT
    product_id,
    product_name,
    category_id,
    category_name,
    SUM(product_quantity) AS total_units_sold,
    SUM(total_order_item_amount) AS total_sales_amount,
    AVG(product_price) AS avg_unit_price,
    COUNT(DISTINCT order_id) AS total_orders
FROM {{ ref('int_localbike_sales_fact') }}
GROUP BY product_id, product_name, category_id, category_name