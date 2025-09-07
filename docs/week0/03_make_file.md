### Install make command
Run in powershel (as admin)
```shell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString(‘https://community.chocolatey.org/install.ps1‘))
choco install make
```

### Create and test makefile
Makefile defines shortcuts for common development and service management tasks:

help: Shows available commands and their descriptions.
start/stop/restart/status/logs: Manage Docker Compose services (start, stop, restart, check status, view logs).
health: Checks the health of various services (API, OpenSearch, Airflow, Ollama) using curl.
setup: Installs Python dependencies using uv.
format: Formats code with Ruff.
lint: Runs Ruff for linting and mypy for type checking.
test: Runs tests with pytest.
test-cov: Runs tests with coverage reporting.
clean: Stops containers, removes volumes, and prunes Docker system.
Each command is documented for easy reference and automation.

.PHONY is a special target in a Makefile that tells make the listed targets are not actual files, but just names for commands. This prevents conflicts if a file with the same name exists and ensures the commands always run when requested.