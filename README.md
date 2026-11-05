# Todo App Deployment Using Terraform and Docker

## Project Overview

This project demonstrates the deployment of a Todo application using Docker and AWS EC2, with Terraform for infrastructure provisioning.

The application is containerized using Docker, and the Docker image is published to Docker Hub. Terraform configuration files are used to provision AWS infrastructure, including an EC2 instance and a security group.

This project helped me practice containerization, cloud infrastructure provisioning, and application deployment.

## Architecture Diagram

<img width="1536" height="1024" alt="todo ar" src="https://github.com/user-attachments/assets/db469620-805f-4afa-a743-c5d30e279a97" />


## Technologies Used

* **Cloud Platform:** AWS
* **Infrastructure as Code:** Terraform
* **Containerization:** Docker
* **Container Image Registry:** Docker Hub
* **Compute Service:** Amazon EC2
* **Operating System:** Amazon Linux 2023
* **Application:** Docker Getting Started Todo App
* **Version Control:** Git and GitHub

## Project Workflow

1. Obtain the Todo application source code.
2. Build a Docker image for the application.
3. Run the application inside a Docker container.
4. Publish the Docker image to Docker Hub.
5. Configure AWS infrastructure using Terraform.
6. Deploy the containerized application on an AWS EC2 instance.
7. Access the application through the EC2 public IP and port `3000`.

## Docker Hub Image

The application Docker image is available on Docker Hub.

**Docker Hub Repository:**
https://hub.docker.com/r/poojadaingade5/todo-app

**Image:** `sanketdaingade/todo-app:v1`

Pull the image:

```bash
docker pull poojadaingade5/todo-app:1.2.3
```

Run the container:

```bash
docker run -d --name todoapp -p 3000:3000 poojadaingade5/todo-app:1.2.3
```

Check the running container:

```bash
docker ps
```

## AWS EC2 Deployment

The application runs on an AWS EC2 instance using Docker.

After the EC2 instance is configured and the application container is running, access the application using:

```text
http://<EC2-PUBLIC-IP>:3000
```

Replace `<EC2-PUBLIC-IP>` with the public IP address of your EC2 instance.

**Note:** The EC2 security group must allow inbound traffic on port `3000` for browser access.


### Terraform Commands

Navigate to the Terraform directory:

```bash
cd terraform
```

Initialize Terraform:

```bash
terraform init
```

Validate the configuration:

```bash
terraform validate
```

Review the proposed infrastructure changes:

```bash
terraform plan
```

**Important:** Review the plan and verify that Terraform state matches the actual AWS resources before applying changes. Apply only after confirming that the planned changes are correct.

```bash
terraform apply --auto-approve
```

## Screenshots

### 1. Todo Application Running in Browser

<img width="959" height="505" alt="Screenshot 2026-11-05 174154" src="https://github.com/user-attachments/assets/532081f1-84a0-44f7-86d8-1adbda64feb3" />


### 2. AWS EC2 Instance

<img width="959" height="410" alt="Screenshot 2026-11-05 174034" src="https://github.com/user-attachments/assets/197325e0-5d98-4c7e-a74e-2a0d5abf9e29" />


### 3. Docker Hub Image

<img width="959" height="437" alt="Screenshot 2026-11-05 200141" src="https://github.com/user-attachments/assets/46b76286-4a24-4ff0-95d8-3f660f6f738e" />


### 4. Running Docker Container

<img width="950" height="157" alt="Screenshot 2026-11-05 195739" src="https://github.com/user-attachments/assets/37b409b9-0e4e-4e10-96ba-f305cd49858e" />


### 5. Terraform Configuration

<img width="959" height="478" alt="Screenshot 2026-11-05 172752" src="https://github.com/user-attachments/assets/d60c38af-965d-4c2d-8a5f-9f3190e786c2" />


### 6. Build Docker Image

<img width="959" height="503" alt="Screenshot 2026-11-05 195655" src="https://github.com/user-attachments/assets/d898fc18-fb2f-451e-84b2-ebf55953ef11" />


# Tag Docker Image for Docker Hub

docker tag todoapp:v1 poojadaingade5/todo-app:1.2.3


# Push Docker Image to Docker Hub

docker push poojadaingade5/todo-app:1.2.3


## Project Directory Structure

```text
todo-app-terraform-docker-project/
│
├── terraform/
│   ├── .terraform/
│   ├── .terraform.lock.hcl
│   ├── backend.tf
│   ├── main.tf
│   ├── output.tf
│   ├── provider.tf
│   ├── sg.tf
│   ├── variable.tf
│   └── vpc.tf
│
├── todo-app/
│   ├── client/
│   ├── backend/
│   ├── Dockerfile
│   └── .dockerignore
│
├── .gitignore
│
└── README.md
```

## Key Learnings

* Building and running Docker images and containers.
* Publishing and pulling Docker images from Docker Hub.
* Deploying a containerized application on AWS EC2.
* Provisioning AWS infrastructure using Terraform.
* Configuring security groups and application access.
* Validating Terraform configuration files.
* Documenting a cloud project with architecture diagrams and screenshots.

## Security Considerations

* Restrict SSH access on port `22` to trusted IP addresses instead of allowing access from `0.0.0.0/0`.
* Expose only the ports required by the application.
* Never commit AWS credentials, private keys, environment secrets, or Terraform state files to GitHub.
* Review AWS resources and costs after completing the project.

## Credits and Attribution

The Todo application source code is based on Docker's official Getting Started Todo App:

https://github.com/docker/getting-started-todo-app

The deployment and infrastructure configuration were implemented as a personal learning project.

## Author

**Pooja Daingade**
