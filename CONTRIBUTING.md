# Contributing to mosaic-basis

Thank you for your interest in contributing to mosaic-basis! This document provides guidelines and instructions for contributing.

## Development Setup

1. **Clone the repository:**
   ```bash
   git clone https://github.com/egoughnour/mosaic-basis.git
   cd mosaic-basis
   ```

2. **Install the package in editable mode with development dependencies:**
   ```bash
   pip install -e ".[dev]"
   ```

## Development Workflow

### Running Tests

```bash
# Run all tests
pytest

# Run tests with coverage report
pytest --cov=mosaic_basis --cov-report=html

# Run specific test file
pytest tests/test_basic.py

# Run tests in verbose mode
pytest -v
```

### Code Quality Checks

Before submitting a pull request, ensure your code passes all quality checks:

```bash
# Format code with black
black src tests

# Check formatting without modifying files
black --check src tests

# Lint with ruff
ruff check src tests

# Auto-fix linting issues
ruff check --fix src tests

# Type check with mypy
mypy src
```

### Project Structure

```
mosaic-basis/
├── src/
│   └── mosaic_basis/      # Main package source code
│       └── __init__.py
├── tests/                  # Unit tests (pytest)
│   ├── __init__.py
│   └── test_basic.py
├── pyproject.toml         # Project configuration
├── README.md              # Project documentation
├── LICENSE                # MIT License
└── CONTRIBUTING.md        # This file
```

## Coding Standards

- **Python Version:** Support Python 3.8+
- **Code Style:** Follow PEP 8 guidelines (enforced by black and ruff)
- **Line Length:** Maximum 88 characters (black default)
- **Type Hints:** Use type hints for function signatures where appropriate
- **Docstrings:** Use docstrings for modules, classes, and functions

## Pull Request Process

1. **Create a feature branch:**
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. **Make your changes and ensure all tests pass:**
   ```bash
   pytest
   black src tests
   ruff check src tests
   ```

3. **Commit your changes:**
   ```bash
   git add .
   git commit -m "Description of changes"
   ```

4. **Push to your fork and create a pull request:**
   ```bash
   git push origin feature/your-feature-name
   ```

5. **Ensure your PR:**
   - Has a clear description of the changes
   - Includes tests for new functionality
   - Passes all CI checks
   - Updates documentation if needed

## Adding Tests

All new features should include tests. Place test files in the `tests/` directory:

```python
# tests/test_feature.py
import mosaic_basis

def test_new_feature():
    """Test description."""
    # Your test code here
    assert True
```

## Reporting Issues

When reporting issues, please include:
- A clear description of the problem
- Steps to reproduce the issue
- Expected vs. actual behavior
- Python version and operating system
- Relevant error messages or logs

## Questions?

If you have questions about contributing, please open an issue for discussion.

Thank you for contributing to mosaic-basis!
