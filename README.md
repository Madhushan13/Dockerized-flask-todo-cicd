# Flask To-Do App with CI/CD and Dockerized Deployment

## Overview
This project is a **Flask-based To-Do application** that implements **Continuous Integration and Continuous Deployment (CI/CD)** using **GitHub Actions, Docker, and Google Cloud**. The goal is to automate building, testing, packaging, and deploying the application using a **containerized** approach.

## Features
- Create, update, and delete tasks in the To-Do list.
- Automated **CI/CD pipeline** using **GitHub Actions**.
- **Containerized deployment** using **Docker and Docker Hub**.
- **Google Cloud VM integration** for automated deployment.

## Technologies Used
- **Python & Flask** - Web framework for the To-Do app.
- **Docker** - Containerizing the application.
- **GitHub Actions** - Automating build, test, and deployment.
- **Docker Hub** - Storing and managing the Docker images.
- **Google Cloud (VM)** - Hosting the application.

---

## **Project Setup**

### **Step 1: Clone the Repository**
```bash
git clone https://github.com/your-username/flask-todo-app.git
cd flask-todo-app
```
### Step2: Set Up a Virtual Environment
```bash
python -m venv venv
source venv/bin/activate   # On Windows: venv\Scripts\activate
pip install -r requirements.txt
```
### Step 3: Run the Flask Application Locally
```bash
python app.py
```
The application should now be accessible at: http://127.0.0.1:5000/

## **Docker Setup & Deployment**
### Step 4: Create a Docker Image
Ensure you have Docker installed, then run:
```bash
docker build -t your-dockerhub-username/flask-todo-app .
```
### Step 5: Run the Docker Container Locally
```bash
docker run -p 5000:5000 your-dockerhub-username/flask-todo-app
```
The application will be accessible at http://localhost:5000/

### Step 6: Push Docker Image to Docker Hub
```bash
docker login
docker tag flask-todo-app your-dockerhub-username/flask-todo-app:latest
docker push your-dockerhub-username/flask-todo-app:latest
```


