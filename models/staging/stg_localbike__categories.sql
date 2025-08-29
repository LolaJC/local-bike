SELECT 
    category_id AS category_id,
    category_name AS category_name
FROM {{ source('local_bike', 'categories') }}