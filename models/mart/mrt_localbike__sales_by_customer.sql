SELECT
    customer_id,
    COUNT(customer_id) AS nb_customers,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(product_quantity) AS total_units_sold,
    SUM(total_order_item_amount) AS total_spent,
    AVG(total_order_item_amount) AS avg_order_item_amount,
    AVG(COUNT DISTINCT order_id) AS avg_orders
FROM {{ ref('int_localbike_sales_fact') }}
GROUP BY customer_id