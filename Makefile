test:
	pytest -sv test/

clean:
	find . -type f -name "*.pyc" -delete

build:
	$(VIRTUAL_ENV)/bin/pip install -U setuptools wheel
	$(VIRTUAL_ENV)/bin/python setup.py sdist bdist_wheel

.PHONY: test clean build
