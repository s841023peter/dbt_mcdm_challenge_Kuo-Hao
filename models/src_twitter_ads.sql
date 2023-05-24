{{ config(materialized='view') }}
SELECT
  __insert_date,
  `campaign_id` as id,

  channel,
  clicks,
  `date`,

  impressions,
  spend,
  `engagements` as conversions
FROM {{ ref('src_promoted_tweets_twitter_all_data') }}
