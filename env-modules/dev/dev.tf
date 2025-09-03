module "dev" {
  source         = "./main"
  instance_count = 1
  ami_id         = "ami-02d26659fd82cf299"
  instance_type  = "t3.micro"
  volume_size    = 10
  volume_type    = "gp3"
  name          = "dev-instance"
  security_group_name = "dev-security-group"

}