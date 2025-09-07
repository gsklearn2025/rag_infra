### Services required
- postgres
- airflow
- opensearch
- opensearch-dashboards
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

