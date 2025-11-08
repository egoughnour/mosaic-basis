# mosaic-basis

Forward-biased frame selection for OMP to reconstruct frame sequences and object trajectories as bases.

## Installation

### For Users

```bash
pip install mosaic-basis
```

### For Development

```bash
# Clone the repository
git clone https://github.com/egoughnour/mosaic-basis.git
cd mosaic-basis

# Install in editable mode with development dependencies
pip install -e ".[dev]"
```

## Development

### Quick Start with Makefile

The project includes a Makefile for common development tasks:

```bash
# Show all available commands
make help

# Run all checks (format, lint, test)
make check

# Run tests
make test

# Run tests with coverage
make coverage

# Format code
make format

# Run linter
make lint

# Clean build artifacts
make clean
```

### Running Tests

```bash
# Run all tests
pytest

# Run tests with coverage
pytest --cov=mosaic_basis --cov-report=html

# Run specific test file
pytest tests/test_basic.py
```

### Code Quality

```bash
# Format code with black
black src tests

# Lint with ruff
ruff check src tests

# Type check with mypy
mypy src
```

### Project Structure

```
mosaic-basis/
├── src/
│   └── mosaic_basis/      # Main package source code
│       └── __init__.py
├── tests/                  # Unit tests
│   ├── __init__.py
│   └── test_basic.py
├── pyproject.toml         # Project configuration (TOML-style)
├── README.md
└── LICENSE
```

## Publishing to PyPI

### Preparation

1. Update the version in `pyproject.toml` and `src/mosaic_basis/__init__.py`
2. Update the `README.md` with any new features or changes
3. Ensure all tests pass: `pytest`
4. Build the distribution: `python -m build`

### Publishing

```bash
# Install build tools
pip install build twine

# Build the distribution
python -m build

# Upload to TestPyPI (for testing)
twine upload --repository testpypi dist/*

# Upload to PyPI
twine upload dist/*
```

## Renaming the Package

To rename this package for a different project:

1. Update `name` in `pyproject.toml` (line 6)
2. Rename the directory `src/mosaic_basis/` to `src/your_new_name/`
3. Update `known-first-party` in `pyproject.toml` (line 109)
4. Update imports in `tests/test_basic.py`
5. Update the description and URLs in `pyproject.toml`
6. Update this README.md

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
