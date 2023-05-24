{{ config(materialized='view') }}
SELECT
  __insert_date,
  `campaign_id` as id,


  channel,
  clicks,
  `date`,

  `imps` as impressions,
  spend,
  `conv` as conversions
FROM {{ ref('src_ads_bing_all_data') }}
