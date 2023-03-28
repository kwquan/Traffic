# Traffic Speed ELT(Real-time Traffic Speed on roads)

### Intro

Tools: Google Cloud Storage, BigQuery, Looker, DBT
Prerequisites: Google Cloud Platform, DBT, GCP CLI

This project is an end-to-end ELT[Extract,Load,Transform] pipeline that does the following:
1) Calls the LTA API to get current traffic speeds for each road
[https://datamall.lta.gov.sg/content/dam/datamall/datasets/LTA_DataMall_API_User_Guide.pdf]
2) Pushes data to GCS bucket
3) Create RawSpeed table using BigQuery based on GCS data
4) Use DBT to create src_speed & dim_speed_cleansed tables
5) Use Looker to visualize data

### Set-up

