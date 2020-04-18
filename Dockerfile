# The first instruction is what image we want to base our container on
# We Use an official Python runtime as a parent image
FROM python:3.7-alpine

# The enviroment variable ensures that the python output is set straight
# to the terminal with out buffering it first
ENV PYTHONUNBUFFERED 1

# create root directory for our project in the container
RUN mkdir /test_23p

# Set the working directory to /test_23p
WORKDIR /test_23p

# Copy the current directory contents into the container at /test_23p
ADD test_23p /test_23p/

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt
