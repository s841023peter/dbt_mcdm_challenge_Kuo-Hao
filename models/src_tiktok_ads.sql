{{ config(materialized='view') }}
SELECT
  __insert_date,
  `campaign_id` as id,


  channel,
  clicks,
  `date`,

  impressions,
  spend,
  `add_to_cart` + `purchase` + `registrations` + `rt_installs` as conversions
FROM {{ ref('src_ads_tiktok_ads_all_data') }}
