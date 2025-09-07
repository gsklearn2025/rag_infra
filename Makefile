.PHONY: help start stop restart status logs health setup format lint test test-cov clean

# Default target
help: ## Show this help message
	@echo "Available commands:"
	@echo "setup, format, lint, test, test-cov, clean, start, stop, restart, status, logs, health"

# Service management
start: ## Start all services
	@echo "Stating Services:"

stop: ## Stop all services
	@echo "Stating Services:"

restart: ## Restart all services
	@echo "Restating Services:"

status: ## Show service status
	@echo "Status:"

logs: ## Show service logs
	@echo "Show logs:"

# Health checks
health: ## Check all services health
	@echo "Checking service health..."

# Development
setup: ## Install Python dependencies
	uv sync

format: ## Format code
	uv run ruff format

lint: ## Lint and type check
	uv run ruff check --fix
	uv run mypy src/

test: ## Run tests
	uv run pytest

test-cov: ## Run tests with coverage
	uv run pytest --cov=src --cov-report=html

# Cleanup
clean: ## Clean up everything
	@echo "Cleaning up everyhing:"
