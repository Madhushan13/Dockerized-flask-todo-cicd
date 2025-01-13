# Use an official Python runtime as the base image
FROM python:3.12-slim-bullseye

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install any needed dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the outside world
EXPOSE 5000

# Define the environment variable
ENV FLASK_APP=app.py

# Run the Flask app when the container starts
CMD ["flask", "run", "--host", "0.0.0.0"]
