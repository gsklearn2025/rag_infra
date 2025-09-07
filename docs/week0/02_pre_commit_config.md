### Add .pre-commit-config.yaml
The .pre-commit-config.yaml sets up pre-commit to run code quality checks before each commit:

It uses the ruff-pre-commit repo to run two hooks:
- ruff: Checks import sorting (with --select=I) and auto-fixes issues.
- ruff-format: Automatically formats your code.
It uses the mirrors-mypy repo to run mypy for static type checking, ignoring missing imports and disabling the "import-untyped" error.
This ensures your code is formatted, imports are sorted, and type-checked before every commit.