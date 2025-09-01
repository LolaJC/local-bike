SELECT
    date_trunc(order_date, YEAR) AS sale_year,
    date_trunc(order_date, MONTH) AS sale_month,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(product_quantity) AS total_units_sold,
    SUM(total_order_item_amount) AS total_sales_amount
FROM {{ ref('int_localbike_sales_fact') }}
GROUP BY date_trunc(order_date, YEAR), date_trunc(order_date, MONTH)
ORDER BY sale_year, sale_month
