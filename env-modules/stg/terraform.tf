terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.11.0"
    }
  }

  backend "s3" {
    bucket = "value-sujal-bucket-new" 
    key    = "env-modules/stg/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "T-value-sujal-bucket-new-table"
  }
}
