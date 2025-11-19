# AWS Infrastructure Template

## Purpose

The purpose of this repo is to provide the base configuration to allow people to deploy a resource to AWS with minimal configuration

---

## **Overview**

This template is designed to help you quickly spin up AWS infrastructure following best practices. It includes:

- Standardized Terraform project layout  
- Environment-specific configurations (dev, test, prod)  
- Deployment automation via GitHub Actions  
- **AWS OIDC** setup for passwordless, secure GitHub → AWS authentication  
- Reusable modules and patterns you can extend for your own projects  

---

##  **What’s Included**

- `main.tf`, `variables.tf`, `outputs.tf` boilerplate  
- Environment folders with dedicated tfvars  
- GitHub Actions workflow for Terraform plan/apply  
- OIDC trust relationships for each environment  
- Example IAM roles and minimum permissions needed for deployments  
- Backend configuration pattern for remote state (e.g., S3 + DynamoDB)  
