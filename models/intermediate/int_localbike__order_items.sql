SELECT
    oi.order_item_id,
    oi.order_id,
    oi.product_id,
    p.product_name,
    c.category_id,
    c.category_name,
    p.product_price,
    oi.quantity,
    oi.total_order_item_amount
FROM {{ ref('stg_localbike__order_items') }} oi
LEFT JOIN {{ ref('stg_localbike__products') }} p on oi.product_id = p.product_id
LEFT JOIN {{ ref('stg_localbike__categories') }} c on p.category_id = c.category_id