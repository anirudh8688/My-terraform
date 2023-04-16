module "sg" {
  source            = "../../modules/sg"
  sg_name           = "ssh protocol"
  ingress_from_port = 80
  ingress_to_port   = 80
  ingress_protocol  = "tcp"
  egress_from_port  = 443
  egress_to_port    = 443
  egress_protocol   = "tcp"
}
