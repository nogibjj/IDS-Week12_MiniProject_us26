install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	

format:	
	black mylib/*.py 
	black *.py

lint:
	ruff mylib/*.py
	ruff *.py
		
all: install test format lint
