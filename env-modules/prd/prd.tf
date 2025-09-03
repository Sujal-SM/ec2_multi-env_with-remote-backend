module "dev" {
  source = "../../main"

  ami_id              = "ami-02d26659fd82cf299"  
  instance_type       = "t3.micro"
  security_group_name = "prd-sg"
  volume_size         = 12
  volume_type         = "gp3"
  instance_count      = 1

  env          = "prd"
  ec2_key_name = "prd-key"
}
