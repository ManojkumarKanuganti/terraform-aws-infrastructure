# Infrastructure as Code for Automated Cloud Infrastructure Provisioning Using Terraform

## 1. Project Overview

This project presents an Infrastructure as Code (IaC) solution for automated provisioning and management of cloud infrastructure using Terraform on Amazon Web Services (AWS).

The project demonstrates how Terraform can be used to provision a complete AWS web server environment in a repeatable, automated, and modular manner.

The infrastructure includes an Amazon VPC, public subnet, Internet Gateway, route table, security group, and EC2 instance running Amazon Linux 2023. Nginx is automatically installed and configured using EC2 user data.

Terraform remote state is securely maintained in Amazon S3 with versioning, encryption, and state locking.

## 2. Objectives

- Automate AWS infrastructure provisioning using Terraform.
- Implement Infrastructure as Code principles.
- Create a modular Terraform architecture.
- Deploy an EC2-based web server automatically.
- Configure networking components using Terraform.
- Implement security controls using AWS Security Groups.
- Automate Nginx installation using EC2 user data.
- Store Terraform state remotely using Amazon S3.
- Enable state versioning, encryption, and locking.
- Maintain the project using Git and GitHub.

## 3. Technologies Used

| Technology | Purpose |
|---|---|
| Terraform | Infrastructure as Code |
| Amazon Web Services | Cloud platform |
| Amazon EC2 | Compute |
| Amazon VPC | Network isolation |
| Amazon S3 | Remote Terraform state |
| Amazon Linux 2023 | EC2 operating system |
| Nginx | Web server |
| AWS CLI | AWS command-line management |
| Git | Version control |
| GitHub | Source-code repository |
| PowerShell | Windows automation |

## 4. AWS Infrastructure

The following AWS resources are provisioned using Terraform:

- VPC
- Public Subnet
- Internet Gateway
- Route Table
- Route Table Association
- Security Group
- EC2 Instance
- Amazon Linux 2023 AMI

## 5. Architecture


                    AWS Cloud
                       |
                    VPC
                 10.0.0.0/16
                       |
                Public Subnet
                 10.0.1.0/24
                       |
              +--------+--------+
              |                 |
       Internet Gateway    Security Group
                                |
                         Ports 80/443
                         SSH from
                         authorized IP
                                |
                           EC2 Instance
                         Amazon Linux 2023
                                |
                              Nginx
                                |
                           Web Browser