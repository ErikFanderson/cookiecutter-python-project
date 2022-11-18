# Author: {{cookiecutter.author}} 
# Date Created: {% now 'local', '%m/%d/%Y' %}

default: help

# Show this help
help:
	@awk '/^#/{c=substr($$0,3);next}c&&/^[[:alpha:]][[:alnum:]_-]+:/{print substr($$1,1,index($$1,":")),c}1{c=0}' $(MAKEFILE_LIST) | column -s: -t

# Builds python project for distribution
build:
	python3 -m build

# Publishes built project to local pypi server
publish:
	python3 -m twine upload --verbose dist/*

# Runs all tests in tests directory
test:
	pytest -v tests

# Export anaconda environment
export:
	conda env export --from-history | grep -v "prefix" > environment.new.yml

# Clean up repo
clean:
	rm -rf dist/ build/ *.log tags

.PHONY: default build test export clean
