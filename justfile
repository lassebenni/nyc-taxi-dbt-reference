DBT := "dbt"

# Show available recipes
default:
    @just --list

# Verify dbt can connect to Azure PostgreSQL
debug:
    {{DBT}} debug --profiles-dir .

# Install dbt packages from packages.yml (only needed once you add packages.yml in Ch5)
deps:
    {{DBT}} deps

# Build every model with tests interleaved (once you have models)
build:
    {{DBT}} build --profiles-dir .

# Build models only, no tests — useful while iterating locally
run:
    {{DBT}} run --profiles-dir .

# Run every test in the project
test:
    {{DBT}} test --profiles-dir .
