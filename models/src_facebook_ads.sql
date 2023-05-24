{{ config(materialized='view') }}
SELECT
  __insert_date,
  `campaign_id` as id,


  channel,
  clicks,
  `date`,

  impressions,
  spend,
  `add_to_cart` + `purchase` + `complete_registration` as conversions
FROM {{ ref('src_ads_creative_facebook_all_data') }}
