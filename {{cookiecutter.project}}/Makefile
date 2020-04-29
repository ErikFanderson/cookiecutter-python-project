# Author: {{cookiecutter.author}} 
# Date Created: {% now 'local', '%m/%d/%Y' %}

default: test

# Lints {{cookiecutter.project}} directory recursively
lint:
	pylint {{cookiecutter.project}} tests

# Formats {{cookiecutter.project}} directory recursively
format:
	yapf -i -r {{cookiecutter.project}} tests

# Type checks {{cookiecutter.project}} directory recursively
type:
	mypy {{cookiecutter.project}} tests

# Runs all tests in tests directory 
test:
	pytest -v tests

# Export anaconda environment
export:
	conda env export --from-history | grep -v "prefix" > environment.yml
