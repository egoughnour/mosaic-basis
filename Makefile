.PHONY: help install test coverage lint format clean build publish-test publish

help:  ## Show this help message
	@echo "Available commands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}'

install:  ## Install package in editable mode with dev dependencies
	pip install -e ".[dev]"

test:  ## Run tests
	pytest -v

coverage:  ## Run tests with coverage report
	pytest --cov=mosaic_basis --cov-report=html --cov-report=term-missing

lint:  ## Run linting checks
	ruff check src tests

format:  ## Format code with black
	black src tests

format-check:  ## Check code formatting without modifying
	black --check src tests

type-check:  ## Run type checking with mypy
	mypy src

check: format-check lint test  ## Run all checks (format, lint, test)

clean:  ## Clean build artifacts and cache files
	rm -rf build/
	rm -rf dist/
	rm -rf *.egg-info
	rm -rf src/*.egg-info
	find . -type d -name __pycache__ -exec rm -rf {} + 2>/dev/null || true
	find . -type f -name '*.pyc' -delete
	find . -type f -name '*.pyo' -delete
	rm -rf .pytest_cache
	rm -rf .ruff_cache
	rm -rf .mypy_cache
	rm -rf htmlcov
	rm -f .coverage

build: clean  ## Build distribution packages
	python -m build --no-isolation

publish-test: build  ## Publish to TestPyPI
	python -m twine upload --repository testpypi dist/*

publish: build  ## Publish to PyPI (use with caution!)
	python -m twine upload dist/*

dev:  ## Setup development environment
	@echo "Setting up development environment..."
	pip install --upgrade pip
	pip install -e ".[dev]"
	pip install build twine
	@echo "Development environment ready!"
