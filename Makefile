.PHONY: lint
lint:
	black --check -l 120 src/ tests/

.PHONY: format
format:
	black -l 120 src/ tests/

.PHONY: test
test:
	$(VIRTUAL_ENV)/bin/python -m pytest -sv tests

.PHONY: clean
clean:
	find . -type f -name "*.pyc" -delete

.PHONY: build
build:
	$(VIRTUAL_ENV)/bin/pip install -U setuptools wheel
	$(VIRTUAL_ENV)/bin/python setup.py sdist bdist_wheel

.PHONY: install-dev
install-dev:
	$(VIRTUAL_ENV)/bin/python -m pip install -e .[dev]
