# AWS Infrastructure with Terraform

This repository contains Terraform code for provisioning a foundational AWS infrastructure, including a VPC, subnets, and an EC2 instance designed for hosting a web service with Nginx.

***
<!-- TOC -->

- [AWS Infrastructure with Terraform](#aws-infrastructure-with-terraform)
  - [Overview](#overview)
    - [Goals](#goals)
  - [Project Structure](#project-structure)
  - [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Deployment](#deployment)
  - [Modules](#modules)
    - [VPC](#vpc)
    - [Subnets](#subnets)
    - [EC2](#ec2)
  - [Contributing](#contributing)
    - [Commit Messages](#commit-messages)
    - [Pull Requests](#pull-requests)
  - [Versioning](#versioning)

<!-- /TOC -->
***

## Overview

This project automates the creation of a secure and scalable AWS infrastructure using Terraform. It focuses on provisioning a VPC with segregated public and private subnets across multiple availability zones and deploying an EC2 instance configured for Nginx.

### Goals

- **Scalability**: Support scaling within AWS by leveraging multiple availability zones.
- **Security**: Ensure a high level of security by isolating resources within private subnets where appropriate.
- **Automation**: Fully automate infrastructure provisioning to ensure repeatability and reduce manual errors.

## Project Structure

- `modules/`: Contains reusable Terraform modules for VPC, subnets, and EC2 instance provisioning.
- `main.tf`: Orchestrates the module usage and ties together the infrastructure components.
- `variables.tf`: Defines variables for customizing the Terraform configuration.
- `outputs.tf`: Specifies output variables that are useful for querying and integrating with the provisioned resources.
- `providers.tf`: Configures the Terraform providers and authentication.

## Getting Started

### Prerequisites

- Terraform >= 0.12
- AWS CLI configured with Administrator access
- An AWS account and your AWS credentials configured

### Deployment

1. **Initialize Terraform**: Run `terraform init` in the root directory to initialize Terraform with the necessary providers.
2. **Plan Deployment**: Execute `terraform plan` to review the changes that will be made to your AWS environment.
3. **Apply Configuration**: Run `terraform apply` to apply the configuration and provision your AWS infrastructure.

## Modules

### VPC

The VPC module provisions a Virtual Private Cloud to host all the resources, ensuring they are isolated and secure.

### Subnets

This module creates public and private subnets across multiple availability zones for high availability and isolation.

### EC2

Provisions an EC2 instance within the public subnet, configured to host an Nginx server, accessible over HTTP.


