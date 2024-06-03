#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Step 1: Build the project (assuming a Makefile is available)
echo "Building the project..."
make

# Step 2: Run your tests
echo "Running tests..."
make test

# Step 3: Generate code coverage report using gcovr
echo "Generating code coverage report..."
gcovr -r . --html --html-details -o coverage.html

echo "Tests and code coverage report generation completed successfully."
