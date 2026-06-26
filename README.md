# terraform-project
1. Infrastructure as Code (IaC) with Terraform

Infrastructure as Code (IaC) is the practice of managing and provisioning infrastructure using code instead of manually creating resources through cloud consoles.

Terraform is an open-source IaC tool developed by HashiCorp that allows you to define infrastructure in Human-Readable Configuration Language (HCL). Terraform supports multiple cloud providers such as AWS, Azure, Google Cloud, and many others.

Key Benefits
Infrastructure automation
Version control using Git
Consistent deployments
Reusable configurations
Reduced manual errors


2. Install Terraform

Terraform installation is the first step before creating infrastructure.

Steps
Download Terraform from the official website.
Install and verify using:
terraform -version
Common Commands
terraform init
terraform validate
terraform fmt
terraform version
Purpose
Initializes the project
Downloads required providers
Validates configuration files
Formats Terraform code

3. Build Infrastructure (AWS)

Terraform provisions AWS resources using configuration files.

Example resources include:

EC2 Instance
VPC
Security Group
S3 Bucket
IAM Resources
Workflow
Write Code
      ↓
terraform init
      ↓
terraform plan
      ↓
terraform apply
      ↓
Infrastructure Created
Important Commands
terraform init
terraform plan
terraform apply



4. Change Infrastructure

Terraform tracks infrastructure changes through the state file.

When configuration files are modified:

Update Terraform code.
Run:
terraform plan

Terraform compares:

Current Infrastructure
Desired Infrastructure

Finally apply:

terraform apply

Only necessary changes are performed.




5. Destroy Infrastructure

Terraform can safely remove all managed infrastructure.

Command:

terraform destroy

Terraform compares the state file and deletes all resources created by the configuration.

Useful for:

Practice environments
Temporary infrastructure
Cost optimization



6. Define Input Variables

Variables make Terraform configurations reusable and flexible.

Instead of hardcoding values, variables allow users to provide inputs.

Example:

variable "instance_type" {
  default = "t2.micro"
}

Usage:

instance_type = var.instance_type
Benefits
Reusable code
Environment-specific values
Cleaner configurations
Easier maintenance




7. Query Data with Outputs

Outputs display useful information after deployment.

Example:

output "instance_public_ip" {
  value = aws_instance.web.public_ip
}

After running:

terraform apply

Terraform displays:

instance_public_ip = 54.xx.xx.xx
Common Outputs
Public IP
Private IP
Instance ID
DNS Name
VPC ID
Subnet ID




8. Store Remote State (S3 Backend)

Terraform stores infrastructure information in a state file.

Instead of keeping it locally, the state can be stored remotely using an AWS S3 bucket.

Benefits include:

Team collaboration
Centralized state
State backup
Better security
Shared infrastructure management

Example:

terraform {
  backend "s3" {
    bucket = "terraform-state-bucket"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}



9. Create a Terraform Module

Modules help organize and reuse Terraform code.

Instead of writing the same configuration repeatedly, modules encapsulate infrastructure components.

Example Module Structure

modules/
    ec2/
        main.tf
        variables.tf
        outputs.tf

Root Module

main.tf

Usage:

module "ec2" {
  source = "./modules/ec2"
}
Benefits
Code reuse
Better organization
Easier maintenance
Scalable infrastructure



10. Use Modules from the Terraform Registry

Terraform Registry provides community and official reusable modules.

Instead of writing infrastructure from scratch, existing modules can be used.

Example:

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
}
Advantages
Faster development
Tested modules
Community support
Best practices
Reduced code



11. Manage Terraform Versions and Providers

Terraform allows version control for both Terraform itself and cloud providers.

Example:

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


Why Version Management?
Stable deployments
Prevent breaking changes
Consistent environments
Better collaboration


🎯 Skills Covered
Terraform Fundamentals
Infrastructure as Code (IaC)
AWS Resource Provisioning
Variables & Outputs
Terraform State Management
Remote Backend (S3)
Module Development
Terraform Registry
Version Constraints
Provider Management
Infrastructure Automation
Git & GitHub


🛠 Technologies Used
Terraform
AWS
HCL (HashiCorp Configuration Language)
Git
GitHub


📖 Learning Outcome

After completing this repository, I gained practical experience in:

Writing reusable Terraform configurations
Deploying and managing AWS infrastructure
Using variables, outputs, and modules effectively
Managing Terraform state locally and remotely
Working with official Terraform Registry modules
Maintaining consistent Terraform and provider versions
Following Infrastructure as Code best practices

