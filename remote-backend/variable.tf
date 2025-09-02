variable "bucket_name" {
  description = "The name of the S3 bucket to store Terraform state"
  type        = string
  default = "value-sujal-bucket"
  
}

variable "hash-key" {
  description = "The name of the hash key for DynamoDB table"
  type        = string
  default = "value-sujal"
  
}