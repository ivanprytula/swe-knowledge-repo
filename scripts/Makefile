# Invoke 'black', 'flake' and 'mypy' targets one by one when running the 'make all' target
all: black isort pylint flake mypy

# Default target to be executed when running make with no parameters.
# .DEFAULT_GOAL := all

# Forces make to treat those targets as non-file targets
# 1. If we have a file or executed command creates file with the same name >> need to mark target as "phony"
# 2. If we write a target whose recipe won't create file with the same name >> don't mark target as "phony"
# .PHONY: black flake mypy

# Invoke black from the current directory when running the 'make black' target
black:
	poetry run black .
	@echo "--------"

isort:
	poetry run isort .

pylint:
	poetry run pylint linters_formatters_sandbox.py

# Invoke flake8 from the current directory when running the 'make flake' target
flake:
	poetry run flake8

# Invoke mypy on all *.py files recursively in all subdirectories when running the 'make mypy' target
mypy:
	poetry run mypy .

# ====================================
qa-check:
	poetry run ruff check .
	poetry run black --check .
	poetry run isort . --check
