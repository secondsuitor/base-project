# One-command tasks, the same on every machine and in every language.
# Replace the bodies of these targets with your stack's real commands.
# Examples are given in comments for Python and Node.

.DEFAULT_GOAL := help
.PHONY: help setup run test lint fmt clean

help: ## Show available commands
	@grep -E '^[a-zA-Z_-]+:.*?## ' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "  %-10s %s\n", $$1, $$2}'

setup: ## Install dependencies and git hooks
	@echo "TODO: install dependencies"
	@# Python: python -m venv .venv && .venv/bin/pip install -r requirements.txt
	@# Node:   npm install
	@command -v pre-commit >/dev/null 2>&1 && pre-commit install || \
		echo "Tip: install pre-commit (https://pre-commit.com) to enable git hooks"
	@[ -f .env ] || (cp .env.example .env && echo "Created .env from .env.example - fill in real values")

run: ## Run the project
	@echo "TODO: run the project"
	@# Python: .venv/bin/python -m src
	@# Node:   npm start

test: ## Run the test suite
	@echo "TODO: run tests"
	@# Python: .venv/bin/pytest
	@# Node:   npm test

lint: ## Run linters and format checks
	@echo "TODO: run linters"
	@# Python: .venv/bin/ruff check . && .venv/bin/ruff format --check .
	@# Node:   npm run lint

fmt: ## Auto-format the code
	@echo "TODO: run formatter"
	@# Python: .venv/bin/ruff format .
	@# Node:   npm run format

clean: ## Remove build artifacts and caches
	rm -rf dist build out coverage htmlcov .pytest_cache .mypy_cache .ruff_cache __pycache__
