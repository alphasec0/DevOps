install:
	#Install Commands
	pip install --upgrade pip && pip install -r requirements.txt
format:
	#Format Code
lint:
	#flake8 or #pylint
test:
	#test
deploy:
	#deploy
all: install lint test deploy