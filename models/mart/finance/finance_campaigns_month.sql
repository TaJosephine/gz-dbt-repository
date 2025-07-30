SELECT 
    MONTH(date_date) AS datemonth,
    ads_margin,
    average_basket,
    operational_margin,
    ads_cost,
    ads_impression,
    ads_clicks,
    quantity,
    revenue,
    purchase_cost,
    margin,
    shipping_fee,
    log_cost,
    ship_cost
FROM {{ref("finance_campaigns_day")}}
GROUP BY datemonth
ORDER BY datemonth