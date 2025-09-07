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
## Adding dependencies
```bash
    uv add --dev jupyter notebook 
    uv add --dev anyio[trio] asgi-lifespan 
    uv add --dev mypy polyfactory pre-commit ruff
    uv add --dev pytest pytest-aiohttp pytest-cov pytest-dotenv pytest-env pytest-mock
    uv add --dev types-sqlalchemy
    uv add --dev testcontainers
```
### why do we need these?
- pre-commit: pre-commit is a framework for managing and running hooks before committing code in version control systems like Git. It automates checks such as code formatting, linting, and static analysis, helping to catch issues early and enforce code quality standards before code is committed.

- polyfactory: Polyfactory is a Python library used to generate fake data for testing and development. It can automatically create instances of classes, including Pydantic models and dataclasses, with realistic random data. This is useful for testing, prototyping, and seeding databases.

- mypy: mypy is a static type checker for Python. It checks your code for type errors by analyzing type hints (annotations) without running the code. This helps catch bugs early, improves code quality, and makes code easier to understand and maintain.

- ruff is a fast Python linter and code formatter. It checks your code for style issues, errors, and potential bugs, similar to tools like flake8 or pylint, but is much faster. Ruff can also automatically fix many issues, helping you maintain clean and consistent code.

- asgi-lifespan: The asgi-lifespan package provides a standardized way to manage startup and shutdown events for ASGI (Asynchronous Server Gateway Interface) applications. It is commonly used in testing or running ASGI apps to ensure that any setup (startup) and cleanup (shutdown) code is executed properly, following the ASGI lifespan protocol. This is especially useful for frameworks like FastAPI and Starlette.

- anyio[trio]: The notation anyio[trio] means you are installing the Python library anyio along with its optional "trio" extra dependencies. anyio is a library that provides a unified async API for asyncio, trio, and curio. 

- types-sqlalchemy: is a Python package that provides type stubs for SQLAlchemy. These stubs enable better type checking and autocompletion in editors and tools like mypy, even if SQLAlchemy itself does not include complete type annotations. This helps catch type errors and improves the development experience when working with SQLAlchemy.

-testcontainers is a Python library that allows you to run lightweight, throwaway Docker containers for testing purposes. It is commonly used to spin up databases, message brokers, or other services in containers during tests, ensuring a consistent and isolated test environment. This helps make integration and end-to-end tests more reliable and reproducible.
