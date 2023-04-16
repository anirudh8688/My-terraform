module "ec2" {
  source                 = "../../modules/ec2"
  ami                    = "ami-00eeedc4036573771"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [module.sg.sg_id]
}

