
{{ config(materialized='table') }}

SELECT 
  *, 
  CASE 
    WHEN conversions != 0 THEN spend / conversions
    ELSE NULL
  END as cost_per_engage, 
  CASE 
    WHEN conversions != 0 THEN spend / conversions
    ELSE NULL
  END as conversion_cost,
  CASE 
    WHEN clicks != 0 THEN spend / clicks
    ELSE NULL
  END as cpc
FROM (
  SELECT * FROM {{ ref('src_bing_ads') }}
  UNION ALL
  SELECT * FROM {{ ref('src_facebook_ads') }}
  UNION ALL
  SELECT * FROM {{ ref('src_tiktok_ads') }}
  UNION ALL
  SELECT * FROM {{ ref('src_twitter_ads') }}
)
