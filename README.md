Cloud Native Flask Application
This is a simple Cloud Native Flask application that monitors system metrics such as CPU and memory utilization. The application is Dockerized for easy deployment.

Features
Monitors system metrics (CPU and memory utilization)
Dockerized for easy deployment
Lightweight and simple setup
Prerequisites
Python 3.9
Docker
Git
Setup and Installation
Clone the repository

bash
Copy code
git clone https://github.com/kratagyanamdev/my_cloud_native_app.git
cd my_cloud_native_app
Create a virtual environment and activate it

bash
Copy code
python3 -m venv venv
source venv/bin/activate  # On Windows use `venv\Scripts\activate`
Install the required packages

bash
Copy code
pip install -r requirements.txt
Install boto3 for AWS ECR operations

bash
Copy code
pip install boto3
Running the Application
Set environment variables

bash
Copy code
export FLASK_APP=app.py
export FLASK_ENV=development  # Optional, for development mode
Run the application

bash
Copy code
flask run
Access the application

Open your web browser and go to http://127.0.0.1:5000.

Dockerization
Building the Docker Image
Build the Docker image

bash
Copy code
docker build -t my-flask-app .
Running the Docker Container
Run the Docker container

bash
Copy code
docker run -d -p 5000:5000 my-flask-app
Access the application

Open your web browser and go to http://localhost:5000.

Troubleshooting
Docker daemon not running

If you encounter issues with the Docker daemon not running, try restarting Docker and ensuring it is properly installed.

bash
Copy code
net stop com.docker.service
net start com.docker.service
Updating pip

If you see a notice to update pip, you can do so with the following command:

bash
Copy code
pip install --upgrade pip
Contributing
If you would like to contribute to this project, please fork the repository and submit a pull request.
