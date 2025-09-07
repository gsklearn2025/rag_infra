### Services required
- postgres
- airflow
- opensearch: OpenSearch is an open-source search and analytics engine, 
  originally derived from Elasticsearch. It is used to store, search, and analyze large volumes of data quickly and in near real-time. OpenSearch is commonly used for log analytics, full-text search, monitoring, and data visualization. It is often paired with OpenSearch Dashboards for visualizing and exploring data.
- opensearch-dashboards: visualize your data, your way. 
- ollama
- our custom API

We will build compose.yaml file to bring all these services up and down

- Add a compose.yaml to project
- Define 3 sections

```yaml
services:
  image:
  container_name:
  environment:
  ...
  
volumns:

networks:
  rag-network:
    driver: bridge  
```

### Lets start with Postgres
- Define the service, volume in compose
- start the docker hub
- run the command
```bash
    docker compose up
```
PS: To create a separate database called airflow_db in the same Postgres container, I have added an initialization SQL script (recommended for Docker Compose) using a file named, for example, init-db.sql in our project. We have then mounted this file in your docker-compose.yaml under the postgres service. On container startup, Postgres will execute all scripts in /docker-entrypoint-initdb.d/ if the data directory is empty (i.e., on first run). 


### Add Opensearch and opensearch dashboard
- check http://localhost:5601/api/status 
- Visit databoard at localhost:5601

### Add ollama
- check http://localhost:11434

### Lets add airflow service
- Define the service, volume in compose
- once airflow container is initiliazed, look for logs for admin password
- try localhost:8080 for airflow dashboard

### Lets add our API service


