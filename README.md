# Traffic Speed ELT(Real-time Traffic Speed on roads)

### Intro
![alt text](https://github.com/kwquan/Traffic/blob/main/process.png)
Tools: Google Cloud Storage, BigQuery, Looker, DBT <br>
Prerequisites: Google Cloud Platform, DBT, GCP CLI

This project is an end-to-end ELT[Extract,Load,Transform] pipeline that does the following:
1) Calls the LTA API to get current traffic speeds for each road
[https://datamall.lta.gov.sg/content/dam/datamall/datasets/LTA_DataMall_API_User_Guide.pdf]
2) Pushes data to GCS bucket
3) Create RawSpeed table using BigQuery based on GCS data
4) Use DBT to create src_speed & dim_speed_cleansed tables
5) Use Looker to visualize data

### Set-up
![alt text](https://github.com/kwquan/Traffic/blob/main/bucket.png)
![alt text](https://github.com/kwquan/Traffic/blob/main/folders.png)
1) Go to GCP & create a bucket using unique project_id[cloud storage > buckets > create]
2) Open Visual Studio Code[or any code editor]. Open terminal & run 'gcloud auth login'. Also run 'gcloud config set project <project-id>' 
3) Create a folder called 'traffic'
4) CD to traffic & run 'dbt init traffic'[Pls ensure dbt-bigquery is installed & working]
5) Enter all credentials & establish connection  

