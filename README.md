# DevOps Stage 4 Task: Containerize, Deploy, and Automate a Microservices TODO Application

## Overview
This project covers the containerization, deployment, and automation of a microservices-based TODO application using **Azure Kubernetes Service (AKS)**, **Terraform**, **Ansible**.

## Project Structure
```

├── k8s/
│   ├── frontend-deployment.yml
│   ├── auth-api-deployment.yml
│   ├── todos-api-deployment.yml
│   ├── users-api-deployment.yml
│   ├── log-processor-deployment.yml
│   ├── redis-deployment.yml
│   ├── traefik-ingress.yml
│
├── terraform/
│   ├── main.tf
│
├── ansible/
│   ├── roles/
│   │   ├── dependencies/
│   │   │   ├── tasks/main.yml
│   │   ├── deployment/
│   │   │   ├── tasks/main.yml 
│   │   ├── templates/
│   │       ├── traefik.yml.j2
│   ├── site.yml
│
└── README.md
```

## Part 1: Application Containerization

### Steps:
1. **Fork & Clone Repository**  
   Fork the original application repository and clone it locally.

2. **Containerize Each Service**  
   Create separate Dockerfiles for:
   - **Frontend (Vue.js)**
   - **Auth API (Go)**
   - **Todos API (Node.js)**
   - **Users API (Java/Spring Boot)**
   - **Log Processor (Python)**
   - **Redis Queue**

3. **Set up Docker Compose**  
   Create a `docker-compose.yml` file to define service interactions.

4. **Run Application Locally**  
   Use the following command to run all services:
   ```sh
   docker-compose up -d
   ```

## Part 2: Infrastructure as Code (IaC) with Terraform & Ansible

### Steps:
1. **Create a New Repository for Infrastructure**
   - This repository will store Terraform & Ansible configurations.

2. **Provision Infrastructure using Terraform**
   - Define Azure resources (AKS, ACR, VNet, etc.).
   - Dynamically create Ansible inventory files.

3. **Automate Deployment with Ansible**
   - Install dependencies (Docker, Kubernetes CLI, etc.).
   - Clone the application repo.
   - Deploy services using Docker Compose.
   - Set up SSL/TLS with Traefik.

4. **Single Command Deployment**
   ```sh
   terraform apply -auto-approve
   ```

## Expected Behaviors
✅ **Login page accessible at custom domain**  
✅ **Secure HTTPS endpoints**  
✅ **Successful login redirects to TODO dashboard**  
✅ **API security implemented with authentication**  

## Submission Requirements
- ✅ **Forked Application Repository URL**
- ✅ **Infrastructure Repository URL**
- ✅ **Screenshots** (Login Page, TODO Dashboard, Terraform Execution)
- ✅ **Live Application URL**

---
🚀 **This project automates microservices deployment on Azure using Kubernetes, Terraform, and Ansible.**