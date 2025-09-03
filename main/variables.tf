variable "ami_id" {
    description = "AMI ID for the EC2 instance"
    type        = string
}

variable "instance_type" {
    description = "Instance type for the EC2 instance"
    type        = string
}

variable "security_group_name" {
    description = "Name of the security group"
    type        = string      
}

variable "volume_size" {
    description = "Size of the root volume in GB"
    type        = number  
}

variable "volume_type" {
    description = "Type of the root volume"
    type        = string
}

variable "instance_count" {
    description = "Number of EC2 instances to create"
    type        = number 
}

variable "env" {
    description = "env for the EC2 instance"
    type        = string
  
}

variable "ec2_key_name" {
    description = "Key name for the EC2 instance"
    type        = string
  
}