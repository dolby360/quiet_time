# Makefile for Little Choices MkDocs site
VENV_DIR = venv
PYTHON = $(VENV_DIR)/bin/python
PIP = $(VENV_DIR)/bin/pip
MKDOCS = $(VENV_DIR)/bin/mkdocs

.PHONY: help venv install serve build clean deploy check clean-venv

help: ## Show this help message
	@echo "Little Choices - MkDocs Commands"
	@echo "================================="
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

$(VENV_DIR)/bin/activate: ## Create virtual environment if it doesn't exist
	@echo "Creating virtual environment..."
	python3 -m venv $(VENV_DIR)
	@echo "Virtual environment created at $(VENV_DIR)"

venv: $(VENV_DIR)/bin/activate ## Ensure virtual environment exists

install: venv ## Install dependencies in virtual environment
	@echo "Installing dependencies in virtual environment..."
	$(PIP) install --upgrade pip
	$(PIP) install -r requirements.txt
	@echo "Dependencies installed successfully!"

serve:
	@echo "Starting development server..."
	$(MKDOCS) serve --dev-addr 127.0.0.1:8000

build:
	@echo "Building site..."
	$(MKDOCS) build
	@echo "Site built successfully in site/ directory"

clean: ## Clean build artifacts
	@echo "Cleaning build artifacts..."
	rm -rf site/
	@echo "Build artifacts cleaned"

clean-venv: ## Remove virtual environment
	@echo "Removing virtual environment..."
	rm -rf $(VENV_DIR)
	@echo "Virtual environment removed"

clean-all: clean clean-venv ## Clean everything including venv

deploy:
	@echo "Deploying to GitHub Pages..."
	$(MKDOCS) gh-deploy --force
	@echo "Deployment complete!"

check:
	@echo "Checking for issues..."
	$(MKDOCS) build --strict
