SELECT 
    finance.*,
    ads_cost,
    impression,
    click
FROM {{ref("finance_days")}} AS finance
LEFT JOIN {{ref("int_campaign_day")}} AS campaign
 ON finance.date_date = campaign.date_date