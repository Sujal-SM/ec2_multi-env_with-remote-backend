module "prd" {
  source         = "./main"
  instance_count = 1
  ami_id         = "ami-02d26659fd82cf299"
  instance_type  = "t3.micro"
  volume_size    = 12
  volume_type    = "gp3"
  name          = "prd-instance"
  security_group_name = "prd-security-group"

}