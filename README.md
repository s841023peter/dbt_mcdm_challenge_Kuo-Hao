# MCDM Challenge Project

This project is part of the MCDM challenge. It uses dbt to process ad data from multiple sources, calculate key metrics, and prepare the data for analysis in Google Looker. The project also includes instructions on how to visualize these metrics in Looker.

## Project Structure
The project consists of the following main components:
- seeds: Contains CSV files with raw data from different ad platforms.
- models: Contains dbt models that transform the raw data into a unified view and calculate key metrics.
- dbt_project.yml: The main configuration file for the dbt project.

## Getting Started
1. Clone the repository:
```
git clone https://github.com/s841023peter/dbt_mcdm_challenge_Kuo-Hao
```

2. Navigate to the project directory:
```
cd dbt_mcdm_challenge_Kuo-Hao
```

3. Run dbt seed to load the raw data:
```
dbt seed
```

4. Run dbt run to execute the transformations:
```
dbt run
```

5. Verify the transformations:
```
dbt test
```
## Key Metrics
The project calculates the following key metrics:
-   Cost per Engagement: Total spend divided by the sum of engagements.
-   Conversion Cost: Total spend divided by the total number of conversions.
-   Impressions: The sum of impressions for each channel.
-   CPC: Total spend divided by the total number of clicks.


## Looker Visualization
To visualize these metrics in Google Looker:
1. Connect Looker to your data warehouse where the dbt models are deployed.
2. Create an Explore on the unified_ads_view model.
3. Follow the instructions provided in this project's Looker guide to create visualizations for each metric.

