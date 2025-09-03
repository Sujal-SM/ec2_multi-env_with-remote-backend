module "dev" {
  source = "../../main"

  ami_id              = "ami-02d26659fd82cf299"  
  instance_type       = "t3.micro"
  security_group_name = "stg-sg"
  volume_size         = 8
  volume_type         = "gp3"
  instance_count      = 1

  env          = "stg"
  ec2_key_name = "stg-key"
}
