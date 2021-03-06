# test_project_api
Testing project for Django REST Framework
This project is develop in Django 3.0.5 and Django REST framework plugin.

## Basic commands
This section is for annotate useful commands for run the app

    1.- Activate virtualenv = source env_23p&bin/activate
    2.- Create a new Django project = django-admin startproject test_23p
    3.- Create a new Django app in the previous project = django-admin startapp people_manager

## Prepare env for work with a Django project

    1.- The project start creating a virtualenv to package libraries and configurations
    2.- Install Django Rest Framewok = pip install djangorestframework
    3.- Modify the settings file adding the app and the rest_framework lib

## Create project
1.- Create the model

2.- Create the serializer

3.- The view for CRUD

## Run the project
    python manager.py createsuperuser
    python manager.py makemigrations
    python manager.py migrate
    python manager.py runserver

## API routes

    Obtain all objects (peoples) => GET {domain}/api/v1.0/people
    Create new object => POST {domain}/api/v1.0/people
    Edit a object => PUT {domain}/api/v1.0/people
    Delete a object => DELETE {domain}/api/v1.0/people
    
## Local containerized de APP
    docker build -t ggr/test_23p:latest .
    docker-compose up
    
## GCP Basic Pipeline
This project contains a basic pipeline created with Google Cloud Build

## Apigee documentation
All request need to be sended by a valid Authorization Token, to generates, you need a valid user credentials.
 
    POST https://guxtavitox-eval-prod.apigee.net/generate_token/+JSON => Generate a valid Token
    GET https://guxtavitox-eval-prod.apigee.net/people/ => Obtain all people list
    GET https://guxtavitox-eval-prod.apigee.net/people/:id  => Obtain de Person with this id  
    PUT https://guxtavitox-eval-prod.apigee.net/people/:id + JSON => Update a Person with this id
    DELETE https://guxtavitox-eval-prod.apigee.net/people/:id => Delete a PErson with this id