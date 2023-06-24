setup:
	conda env create -f environment.yml

export-conda-env:
	conda env export --no-builds > environment.yml

build-docker:
	docker build --tag charan/flask:latest .

run-app-docker-compose:
	docker-compose run -d --rm flask

run-app-docker:
	docker run -p 5001:5001 -v ${PWD}:/srv -d --name flaskapp charan/flask:latest

stop-app-docker:
	docker rm -f flaskapp

restart-app:
	docker restart flaskapp

