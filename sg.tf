resource "aws_security_group" "Alltraffic" {
  name        = var.sg_name
  description = "Allow all ports in inbound and outbound traffic"

  ingress {
    description      = "TLS from VPC"
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = var.ingress_protocol
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = var.egress_protocol
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.sg_name
  }
}

