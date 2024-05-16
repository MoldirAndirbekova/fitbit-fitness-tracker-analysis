# Determine benifits of physical activeness of people by analyzing data from data sources

With this project we built an end-to-end orchestrated data pipeline.

![image](https://github.com/MoldirAndirbekova/fitbit-fitness-tracker-analysis/assets/113928333/3578618a-ad57-4a6f-a37d-8069d5e9d63d)

Data sources:
1) https://www.kaggle.com/datasets/arashnic/fitbit
2) https://github.com/MoldirAndirbekova/dataset
3) https://github.com/timalthoff/activityinequality/tree/master/data
4) https://ourworldindata.org/obesity   

# Used Technologies
- Terraform - all infrastructure code setup 
- Mage- for orchestration;
- Google Run - for deploying the pipeline;
- Google Compute Engine - as a virtual machine;
- PySpark - for data Processing;
- Docker -  run pyspark inside of Docker
- Google Cloud Storage (GCS) - for storage as Data Lake;
- Google BigQuery - for the project Data Warehouse;
- PosgreSQL - for injection some data into database
- dbt - for the transformation of raw data, for testing and documentation;
- Google Looker studio - for visualizations.

# Visualization
![image](https://github.com/MoldirAndirbekova/health-data-analysis/assets/129284147/d7aeb2f2-3f41-41f6-8bd9-89dcb5ef4a1e)

Presentation link: https://www.canva.com/design/DAGFSFLzgqA/7dHQsxHkASgbFXs-pCO3EQ/edit
