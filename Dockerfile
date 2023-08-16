
# Use the official Python image as the base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the application files into the working directory
COPY . /app

# Install the application dependencies
# Fixed typo changed: "requeriments.txt" to "requirements.txt"
# The error message states that the requirements.txt file is missing, so it needs to be present in the same directory as the Dockerfile.
#RUN apt-get install python3-pip && pip install -r requirements.txt
#RUN apt-get update && apt-get install -y --allow-unauthenticated universe
RUN apt-get update 
RUN apt-get install python3-pip
RUN pip3 install -r requirements.txt




# Define the entry point for the container
CMD ["flask", "run", "--host=0.0.0.0"]
