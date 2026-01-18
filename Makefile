deps:

	pip install -r requirements.txt; \

	pip install -r test_requirements.txt

run:
	python main.py
.PHONY: test
test:
	python -m pytest
	python -m pytest --verbose -s
lint: 

	python -m  flake8   hello_world test 