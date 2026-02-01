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
docker_build:
	docker build -t hello-world-printer-iamm .

docker_run: docker_build 
	docker run\
	 --name hello-world-printer-dev \
	-p 5000:5000 \
	-d hello-world-printer-iamm

	