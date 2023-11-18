install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	

format:	
	black *.py 


lint:
	ruff *.py
		
all: install test format lint
