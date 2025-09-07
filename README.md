## Documenting my steps for week0

### Steps for project initiation
- Create a new project and initial setup
```bash
    uv init rag_infra
    git init
    git checkout -b week0
    git add .
    git commit -m "first commit"
    git remote add origin https://github.com/gsklearn2025/rag_infra.git
    git push -u origin week0
```
- remove the default files - main.py
- commit everything for clean start

## Adding dependencies
```bash
    uv add fastapi uvicorn requests httpx
    uv add pydantic pydantic-settings 
    uv add sqlalchemy psycopg2-binary alembic  
    uv add opensearch-py 
```
