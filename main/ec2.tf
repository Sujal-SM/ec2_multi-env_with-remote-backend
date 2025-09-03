resource "aws_key_pair" "key-pair" {
    key_name   = "${var.ec2_key_name}-pair"
    public_key = file("../../main/my-key-22.pub")
    tags = {
        Name = "${var.env}my-key2-pair"
    }
}

resource "aws_default_vpc" "default" {
    tags = {
        Name = "my-default-vpc"
    }
}

resource "aws_security_group" "auto-1" {
    name        = var.security_group_name
    description = "security group for auto"
    vpc_id      = aws_default_vpc.default.id

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["10.0.0.0/24"]
        description = "SSH access from within VPC"  
}   
    ingress {
        from_port   = 8000
        to_port     = 8000
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
}

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "auto-sg-1"
    }
}


resource "aws_instance" "my-ec2" {
    count = var.instance_count     
    ami           = var.ami_id
    instance_type = var.instance_type
    key_name      = aws_key_pair.key-pair.key_name
    vpc_security_group_ids = [aws_security_group.auto-1.id]

    root_block_device {
        volume_size = var.volume_size
        volume_type = var.volume_type
    }

    tags = {
        Name = "${var.env}-my-ec2"
    }
}