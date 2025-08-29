SELECT
    o.order_id,
    o.customer_id,
    o.store_id,
    s.store_name,
    s.store_city,
    o.order_date
FROM {{ ref('stg_localbike__orders') }} AS o
LEFT JOIN {{ ref('stg_localbike__stores') }} AS s ON o.store_id = s.store_id