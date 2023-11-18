## MLflow to manage a simple machine learning project


### Overview

1. **Logging Parameters, Metrics, and a Model**:
   - Capturing parameters, metrics, and models is fundamental in MLflow. It involves recording input settings, performance metrics, and the model itself during the experimentation and training phases.

2. **Understanding the MLflow Fluent API**:
   - The MLflow fluent API provides a user-friendly interface to log and organize machine learning experiments. It simplifies the process of tracking parameters, metrics, and model versions throughout the development lifecycle.

3. **Registering a Model While Logging**:
   - When logging information with MLflow, you can simultaneously register the resulting model. This registration step allows for easy access and management of different model versions within the MLflow environment.

4. **Navigating to a Model in the MLflow UI**:
   - Within the MLflow user interface, accessing logged models is straightforward. You can locate and explore the registered models using the UI, allowing for visualization and comparison of different model versions and their associated metadata.

5. **Loading a Logged Model for Inference**:
   - Utilizing MLflow, you can retrieve and load a logged model effortlessly for inference tasks. MLflow provides functionalities to access these models programmatically, making it convenient to deploy and use models for predictions or further analysis.


### Code Description
1. Install Mlflow
      - pip install mlflow

2. Start a Tracking Server
      - mlflow server --host 127.0.0.1 --port 8080

<p align="center">
  <img width="600" src="https://github.com/nogibjj/IDS-Week12_MiniProject_us26/blob/main/images/1.png" alt="1">
</p>	

3. Train a model and prepare metadata for logging

  main.ipynb has the code for Load and prepare the Iris dataset for modeling. Training a Logistic Regression model and evaluate its performance. Preparing the model hyperparameters and calculate metrics for logging.
   
4. Log the model and its metadata to MLflow

<p align="center">
  <img width="600" src="https://github.com/nogibjj/IDS-Week12_MiniProject_us26/blob/main/images/3.png" alt="3">
</p>	

  Start by initializing an MLflow run context to begin a fresh run, aiming to log both the model and its associated metadata.

  Next, record the model parameters and performance metrics within this run context to ensure comprehensive tracking.

  Tag this run to facilitate its easy retrieval and identification for future reference.

  Simultaneously with logging the model, register it in the MLflow Model Registry, ensuring that while saving the model data, it's also cataloged within the registry for streamlined management and access.

5. mlartifacts and mlruns

  These folders get created after successful run of main.ipynb file. The artifacts folder contains requirements.txt, yaml file and the unique runid associated with that model and it's unique hyperparameters.

  The mlruns contains the logging info such as accuracy metric , hyperparaameters used and a few more meta data.

  This is how we can keep a track of every ml model which was run and can be tracked back in managaing.


<p align="center">
  <img width="600" src="https://github.com/nogibjj/IDS-Week12_MiniProject_us26/blob/main/images/2.png" alt="2">
</p>	

6 Running **!mlflow ui** command 
 The MLflow Tracking component is an API and UI for logging parameters, code versions, metrics, and output files when running your machine learning code and for later visualizing the results.

<p align="center">
  <img width="600" src="https://github.com/nogibjj/IDS-Week12_MiniProject_us26/blob/main/images/4.png" alt="2">
</p>	


<p align="center">
  <img width="600" src="https://github.com/nogibjj/IDS-Week12_MiniProject_us26/blob/main/images/5.png" alt="2">
</p>	

All the necessary information related to model is stored and visualised from this UI.


7. Makefile with the following:

	- install: using requirements.txt file to install required packages

	- test:

	python -m pytest -vv --cov=main *.py
<p align="center">
  <img width="600" src="https://github.com/nogibjj/IDS-Week5_MiniProject_us26/blob/main/images/test.png" alt="install">
</p>

	- format: using black formatter

<p align="center">
  <img width="600" src="https://github.com/nogibjj/IDS-Week5_MiniProject_us26/blob/main/images/format.png" alt="format">
</p>

      - lint: using ruff 

<p align="center">
  <img width="600" src="https://github.com/nogibjj/IDS-Week5_MiniProject_us26/blob/main/images/lint.png" alt="lint">
</p>	

7.Created GitHub Actions that performs all four Makefile commands with badges for each one in the README.md

##### Action include the general CI/CD process in test.yml file, which automatically generate the graph and markdown

<p align="center">
  <img width="600" src="https://github.com/nogibjj/IDS-Week5_MiniProject_us26/blob/main/images/ci_cd.png" alt="cicd">
</p>

## Visualization

##### Count of top universities vs mean industry income score 

<p align="center">
  <img width="600" src="https://github.com/nogibjj/IDS706-Individual_Project_1_us26/blob/main/output_graph/visualization.png" alt="visualization">
</p>	
