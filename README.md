# Google Ads Block

This repository contains views and explores used for the Google Ads Block dashboards.
There are 5 dashboards that come with this block: Google Adwords Overview, Google Adwords - Clicks,
Google Adwords - Conversions, Google Adwords - Impressions and Google Adwords - Spend. Each of the dashboards
provides in-depth analysis of ad/campaign performance over a given timeframe.

This project is remotely included through the Google Ads Block Config project.
To pull updates from this project, update the `ref:` parameter in the manifest file. It should point to the latest commit
in [block-google-ads-tarnsfer](https://github.com/looker/block-google-ads-transfer/commits/master).

The LookML constants are used to specify the name of the schema and connection. They are defined in the Google Ads
Block Config project.
#### Account Structure

ad.view:
 - ad_adapter
   - external_customer_id
   - campaign_id
   - ad_group_id
   - creative_id
   - creative
   - status_active

ad_group.view:
 - ad_group_adapter
   - external_customer_id
   - campaign_id
   - ad_group_id
   - ad_group_name
   - status_active

campaign.view:
 - campaign_adapter
   - external_customer_id
   - campaign_id
   - campaign_name
   - status_active
   - budget_id
   - amount

customer.view:
 - customer_adapter
   - external_customer_id

#### Targeting Criteria
geo.view
 - geotargeting
   - state
   - country_code
   - name
   - postal_code

keyword.view
 - keyword_adapter
   - external_customer_id
   - campaign_id
   - ad_group_id
   - criterion_id
   - criteria
   - status_active
   - bidding_strategy_type

#### Reports

ad_impressions.view
 - _date
 - ad_network_type
 - device_type
 - cost
 - impressions
 - interactions
 - clicks
 - conversions
 - conversionvalue
 - averageposition

Account Stats
 - ad_impressions_adapter
 - ad_impressions_hour_adapter
   - hour_of_day

Campaign Stats
 - ad_impressions_campaign_adapter
 - ad_impressions_campaign_hour_adapter
   - hour_of_day

Ad Group Stats
 - ad_impressions_ad_group_adapter
 - ad_impressions_ad_group_hour_adapter
   - hour_of_day

Keyword Stats
 - ad_impressions_keyword_adapter

Ad Stats
 - ad_impressions_ad_adapter

Targeting Reports
 - ad_impressions * [age_range, audience, gender, geo, parental_status, video]


### Block Info

This Block is modeled on the schema from [Google's BigQuery Data Transfer Service for Google Ads](https://cloud.google.com/bigquery/docs/adwords-transfer).
The schema documentation for AdWords can be found in [Google's docs](https://developers.google.com/adwords/api/docs/appendix/reports).

