# Cloud Resume – Infrastructure as Code Portfolio Project

## Overview

This project is my **Cloud Resume Website**, built to demonstrate practical skills in cloud engineering, Infrastructure as Code, and CI/CD automation.

The goal of this project is to host a personal resume website using modern cloud engineering practices rather than manual configuration.

The infrastructure is provisioned using **Terraform**, the website is hosted on **AWS S3**, and updates are automatically deployed through a **GitHub Actions CI/CD pipeline**.

This project demonstrates real-world cloud workflow including:

* Infrastructure as Code
* Automated deployment
* Cloud-based static website hosting
* Version control and CI/CD integration

---

# Architecture

The deployment architecture follows this workflow:

Local Development
↓
Git Push
↓
GitHub Repository
↓
GitHub Actions (CI/CD Pipeline)
↓
AWS CLI Deployment
↓
Amazon S3 Static Website Hosting

Any PR approval to the **main branch** automatically triggers the pipeline, which deploys the updated website to S3.

---

# Technologies Used

### Cloud Platform

AWS

### Infrastructure as Code

Terraform

### CI/CD

GitHub Actions

### Cloud Services

* Amazon S3 (Static Website Hosting)

### Development Tools

* Git
* AWS CLI
* GitHub

### Frontend

* HTML
* CSS

---

# Project Structure

cloud-resume/

index.html
style.css

terraform/
main.tf

.github/
workflows/
deploy.yml

.gitignore
README.md

---

# Infrastructure Deployment

Infrastructure is managed using Terraform.

Terraform provisions the S3 bucket used to host the resume website.

Example workflow:

terraform init
terraform plan
terraform apply

This ensures the infrastructure can be recreated at any time in a reproducible way.

---

# Continuous Deployment Pipeline

A GitHub Actions workflow automatically deploys the website whenever new code is pushed.

Pipeline steps:

1. Checkout repository code
2. Configure AWS credentials
3. Sync website files to the S3 bucket

Deployment command used in the pipeline:

aws s3 sync . s3://<bucket-name> --delete

---

# Live Website

The resume website is hosted using Amazon S3 static website hosting.

Once deployed, the site is publicly accessible via the S3 website endpoint.

---

# Key Skills Demonstrated

This project demonstrates hands-on experience with:

* Cloud infrastructure provisioning
* Infrastructure as Code (Terraform)
* Continuous Integration / Continuous Deployment
* AWS static website hosting
* Git-based development workflow
* Automation and cloud deployment pipelines

---

# Future Improvements

Planned enhancements for this project include:

* Adding a global CDN using CloudFront
* HTTPS with SSL certificates
* Custom domain configuration
* Backend visitor counter using serverless functions
* Full Cloud Resume Challenge architecture

---

# Author

Vinicius Lemos
Cloud Engineering Student

LinkedIn: (add your link here)
Instagram: (add your link here)

---

This project is part of my journey into cloud engineering and DevOps automation.
