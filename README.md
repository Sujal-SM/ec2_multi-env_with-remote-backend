# Terraform Multi-Environment Infrastructure

This repository manages infrastructure across multiple environments (`dev`, `stg`, `prd`) using Terraform.  
It is organized into **reusable modules**, **environment configs**, and **remote backend** setup for state management.

---

## 📂 Repository Structure

├── env-modules/ # Reusable Terraform modules (dev,prd,stg)
├── main/ # Environment-specific configs (EC2)
├── remote-backend/ # Remote state configuration (S3, DynamoDB)
├── .gitignore
└── README.md


- **`env-modules/`** → contains environment folders (`dev`, `stg`, `prd`) with their own Terraform configs. 
- **`main/`** → contains reusable Terraform modules.  
- **`remote-backend/`** → backend configuration for storing Terraform state remotely (S3 + DynamoDB).  

---

## 🚀 Usage

### 1. Configure Remote Backend
Inside `remote-backend/`, update the backend config with your own S3 bucket, DynamoDB table, and AWS region:

```hcl
terraform {
  backend "s3" {
    bucket         = "my-terraform-state"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
  }
}

