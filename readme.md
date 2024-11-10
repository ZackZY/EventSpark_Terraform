# Infrastructure as Code (IaC) with Terraform

This repository contains Terraform configurations for managing AWS infrastructure components.

## Architecture Components

The infrastructure consists of the following modules:
- API Gateway
- Application Load Balancer (ALB)
- ECS (Elastic Container Service)
- S3 Buckets
- Route Tables
- Security Groups
- SNS/SQS
- RDS
- Internet Gateway
- ELB (Elastic Load Balancer)
- Subnets
- Transit Gateway
- ElastiCache

## Prerequisites

- Terraform v1.7.0
- AWS CLI configured
- GitHub account (for CI/CD)

## Configuration

The infrastructure is configured for the `ap-southeast-1` region by default. This can be modified in the variables.tf file.

## CI/CD Pipeline

The project includes GitHub Actions workflows for automated infrastructure deployment:

### Terraform Plan
- Triggered on pull requests to main branch
- Performs format checking
- Generates and comments the plan on the PR

### Terraform Apply
- Triggered on merges to main branch
- Requires production environment approval
- Automatically applies infrastructure changes

## Getting Started

1. Clone the repository
2. Configure AWS credentials
3. Initialize Terraform:
   ```bash
   terraform init
   ```
4. Review planned changes:
   ```bash
   terraform plan
   ```
5. Apply changes:
   ```bash
   terraform apply
   ```

## GitHub Actions Setup

To enable the CI/CD pipeline, configure the following secrets in your GitHub repository:
- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`
