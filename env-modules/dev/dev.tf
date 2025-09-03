module "dev" {
  source = "../../main"

  ami_id              = "ami-02d26659fd82cf299"  
  instance_type       = "t3.micro"
  security_group_name = "dev-sg"
  volume_size         = 10
  volume_type         = "gp3"
  instance_count      = 1

  env          = "dev"
  ec2_key_name = "dev-key"
}
