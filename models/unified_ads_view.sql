{{ config(materialized='view') }}
SELECT * FROM {{ ref('src_bing_ads') }}
UNION ALL
SELECT * FROM {{ ref('src_facebook_ads') }}
UNION ALL
SELECT * FROM {{ ref('src_tiktok_ads') }}
UNION ALL
SELECT * FROM {{ ref('src_twitter_ads') }}
