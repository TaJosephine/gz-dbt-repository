WITH toto AS (
    SELECT 
     date_date,
     orders_id,
     stg_raw__sales.product_id,
     quantity,
     revenue,
     purchase_price,
    FROM {{ref("stg_raw__sales")}}
    LEFT JOIN {{ref("stg_raw__product")}}
     ON stg_raw__sales.product_id = stg_raw__product.products_id

)

SELECT 
 *,
 revenue-purchase_price AS margin,
 quantity*purchase_price AS purchase_cost
FROM toto