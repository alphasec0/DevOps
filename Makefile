install:
	#Install Commands
	pip install --upgrade pip &&\
	 pip install -r requirements.txt &&\
	 python -m textblob.download_corpora
format:
	#Format Code
	black *.py mylib/*.py
lint:
	#flake8 or #pylint
	pylint --disable=R,C *.py mylib/*.py
test:
	#test
	python -m pytest -vv --cov=mylib --cov=main test_*.py
build:
	#Build Container
	docker build -t deploy-fastapi .
run:
	#Run docker
	#Github CodeSapce
	#docker run -p 127.0.0.1:8080:8080 b176a30ba184 
	#My M2
	docker run -p 127.0.0.1:8080:8080 392df40026f1
deploy:
	#deploy
all: install lint test deploy