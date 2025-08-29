SELECT
    oi.order_item_id,
    oi.order_id,
    o.store_id,
    oi.product_id,
    oi.category_id,
    o.customer_id,
    o.store_name,
    o.store_city,
    oi.product_name,
    oi.category_name,
    o.order_date,
    oi.product_quantity,
    oi.product_price,
    oi.total_order_item_amount
FROM {{ ref('int_localbike__order_items') }} AS oi
LEFT JOIN {{ ref('int_localbike__orders') }} AS o ON oi.order_id = o.order_id